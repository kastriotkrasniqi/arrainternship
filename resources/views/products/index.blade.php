@extends('layouts.app')

@section('content')
    <div class="container">
        <div>
            <a href="{{ route('products.create') }}" class="btn btn-success float-end my-4">Add Product</a>
        </div>
        <!-- Example single danger button -->
        <div class="btn-group">
            <button type="button" class="btn btn-success dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                Filter: Category
            </button>
            <ul class="dropdown-menu" style="max-height:300px;overflow-y:scroll">
                @foreach ($categories as $category)
                    <li><a class="dropdown-item" href="/categories/{{ $category->name }}">{{ $category->name }}</a>
                    </li>
                @endforeach

            </ul>
        </div>

        <table id="myTable" class="display " style="width:100%" border="1">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Category</th>
                    <th>Status</th>
                    <th>Action</th>

                </tr>
            </thead>
            <tbody>
                @foreach ($products as $product)
                    <tr>
                        <td>{{ $product->name }}</td>
                        <td>{{ $product->price }}</td>
                        <td><a href="/categories/{{ $product->category->name }}">{{ $product->category->name }}</a></td>
                        <td>{{ $product->status }}</td>
                        <td><a href="{{ route('products.edit', $product->id) }}"
                                class="btn btn-warning d-block w-50">Edit</a>
                            <form action="{{ route('products.destroy', $product->id) }}" method="POST">
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
                    <th>Price</th>
                    <th>Category</th>
                    <th>Status</th>
                    <th>Action</th>

                </tr>
            </tfoot>
        </table>
    </div>
@endsection
