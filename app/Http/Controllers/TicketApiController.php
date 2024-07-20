<?php

namespace App\Http\Controllers;

use App\Models\Ticket;
use Illuminate\Http\Request;

class TicketApiController extends Controller
{
    function add_ticket(Request $request)
    {
        $tick = new Ticket;
        $tick->ticket_type = $request->ticket_type;
        $tick->desciption = $request->desciption;
        $tick->senderName = $request->senderName;
        $tick->ticket_status = 'open';
        $tick->email=$request->email;
        $tick->address=$request->address;
        $tick->save();
        return response(['message' => 'ticket addedd successfully', 'ticket' => $tick]);
    }

function ticketrecord(){
    $repair=Ticket::where('ticket_type','repair')->count();
    $unlock=Ticket::where('ticket_type','unlock')->count();
    $critical=Ticket::where('ticket_type','critical')->count();
    return response(['repair'=>$repair,'unlock'=>$unlock,'critical'=>$critical]);
}

    function update_ticket(Request $request)
    {
        $tick = Ticket::where('id', $request->tid)->first();
        if ($request->ticket_type) {
            $tick->ticket_type = $request->ticket_type;
        }
        if ($request->desciption) {
            $tick->desciption = $request->desciption;
        }

        if ($request->senderName) {
            $tick->senderName = $request->senderName;
        }
        if ($request->ticket_status) {
            $tick->ticket_status = $request->ticket_status;
        }

        $tick->update();
        return response(['message' => 'ticket updated successfully', 'ticket' => $tick]);
    }


    function delete_ticket($id)
    {
        Ticket::where('id', $id)->first()->delete();
        return response(['message' => 'ticket updated successfully']);
    }

    function fetch_ticket($id = null)
    {
        $tick = $id ? Ticket::where('id', $id)->first() : Ticket::all();

        if ($tick) {
            return response()->json(['status' => 'success', 'Ticket' => $tick], 200);
        } else {
            return response()->json(['status' => 'error', 'message' => 'Ticket not found'], 404);
        }
    }
}
