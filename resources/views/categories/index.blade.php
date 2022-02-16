@extends('layouts.app')

@section('content')
    <div class="container">
        <div>
            <a href="{{ route('categories.create') }}" class="btn btn-success float-end my-4">Add Category</a>
        </div>
        <table id="myTable" class="display" style="width:100%" border="1">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($categories as $category)
                    <tr>
                        <td>{{ $category->name }}</td>
                        <td>{{ $category->status }}</td>
                        <td><a href="{{ route('categories.edit', $category->id) }}"
                                class="btn btn-warning d-block w-25">Edit</a>
                            <form action="{{ route('categories.destroy', $category->id) }}" method="POST">
                                @csrf
                                @method('DELETE')
                                <button type="submit" onclick="return(confirm('Are you sure?'))"
                                    class="btn btn-danger w-25 mt-1">Delete</button>
                            </form>
                        </td>
                    </tr>
                @endforeach


            </tbody>
            <tfoot>
                <tr>
                    <th>Name</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </tfoot>
        </table>
    </div>
@endsection
