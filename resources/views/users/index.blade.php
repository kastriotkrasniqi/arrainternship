@extends('layouts.app')

@section('content')
    <div class="container">

        <table id="myTable" class="display" style="width:100%" border="1">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Lastname</th>
                    <th>Email</th>
                    <th>City</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($users as $user)
                    <tr>
                        <td>{{ $user->name }}</td>
                        <td>{{ $user->lastname }}</td>
                        <td>{{ $user->email }}</td>
                        <td>{{ $user->city }}</td>
                        <td><a href="{{ route('users.edit', $user->id) }}" class="btn btn-warning d-block w-50">Edit</a>
                            <form action="{{ route('users.destroy', $user->id) }}" method="POST">
                                @csrf
                                @method('DELETE')
                                <button type="submit" onclick="return(confirm('Are you sure?'))"
                                    class="btn btn-danger w-50 mt-1">Delete</button>
                            </form>
                        </td>
                    </tr>
                @endforeach


            </tbody>
            <tfoot>
                <tr>
                    <th>Name</th>
                    <th>Lastname</th>
                    <th>Email</th>
                    <th>City</th>
                    <th>Action</th>
                </tr>
            </tfoot>
        </table>
    </div>
@endsection
