@extends('layouts.app')
@section('content')
<!-- Content Header (Page header) -->
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0 text-dark">Staff Panel</h1>
      </div><!-- /.col -->
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
          <li class="breadcrumb-item active"> Staff</li>
        </ol>
      </div><!-- /.col -->
    </div><!-- /.row -->
  </div><!-- /.container-fluid -->
</div>



          <div class="card">
            <div class="card-header">
              <h3 class="card-title">  Staff</h3>
              <button class="btn btn-danger btn-sm" style="float: right;"  data-toggle="modal" data-target="#modal-default">Add New</button>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Images</th>
				  <th>Name</th>
				  <th>Designation</th>
                  <th>Type</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
               @foreach($ads as $row)
                <tr>
                  <td>
                  	@if($row->type==2)
                  		<img src="{{ asset($row->ads) }}" style="height: 70px; width: 70px;">
					@else
                  		<img src="{{ asset($row->ads) }}" style="height: 70px; width: 70px;">
                  	@endif
                  	</td>
                  <td>
{{ $row->link }}
                  </td>
				                    <td>
{{ $row->designation }}
                  </td>
				                    <td>
                  	@if($row->type==2)
                  		Staff
					@else
                  		Management
                  	@endif
                  </td>
                  <td>
                  	  <a href="{{ route('delete.ads',$row->id) }}" class="btn btn-danger" id="delete"> <i class="fa fa-trash"></i> </a>
                  </td>
                </tr>
            	@endforeach
                </tbody>
                <tfoot>
                <tr>
                  <th>Staff Images</th>
				  <th>Name</th>
				  <th>Designation</th>
                  <th>Type</th>
                  <th>Action</th>
                </tr>
                </tfoot>
              </table>
            </div>
            <!-- /.card-body -->
          </div>

<!--category added modal-->
      <div class="modal fade" id="modal-default">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Insert new Staff</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>

            <div class="modal-body">
               <form action="{{ route('store.ads') }}" method="Post" enctype="multipart/form-data">
               	@csrf
                 <div class="form-group">
                   <label for="exampleInputEmail1">Name</label>
                   <input type="text" class="form-control @error('link') is-invalid @enderror" id="english" aria-describedby="emailHelp" name="link" required="">
                     @error('link')
		              <span class="invalid-feedback" role="alert">
		                  <strong>{{ $message }}</strong>
		              </span>
		          @enderror
                 </div>
				                  <div class="form-group">
                   <label for="exampleInputEmail1">Designtion</label>
                   <input type="text" class="form-control @error('designation') is-invalid @enderror" id="english" aria-describedby="emailHelp" name="designation" required="">
                     @error('designation')
		              <span class="invalid-feedback" role="alert">
		                  <strong>{{ $message }}</strong>
		              </span>
		          @enderror
                 </div>
				 				                  <div class="form-group">
                   <label for="exampleInputEmail1">Facebook Profile Link</label>
                   <input type="text" class="form-control @error('facebook') is-invalid @enderror" id="english" aria-describedby="emailHelp" name="facebook" required="">
                     @error('facebook')
		              <span class="invalid-feedback" role="alert">
		                  <strong>{{ $message }}</strong>
		              </span>
		          @enderror
                 </div>
				 				                  <div class="form-group">
                   <label for="exampleInputEmail1">Twitter Profile Link</label>
                   <input type="text" class="form-control @error('twitter') is-invalid @enderror" id="english" aria-describedby="emailHelp" name="twitter" required="">
                     @error('twitter')
		              <span class="invalid-feedback" role="alert">
		                  <strong>{{ $message }}</strong>
		              </span>
		          @enderror
                 </div>
				 				                  <div class="form-group">
                   <label for="exampleInputEmail1">Linkedin Profile Link</label>
                   <input type="text" class="form-control @error('linkedin') is-invalid @enderror" id="english" aria-describedby="emailHelp" name="linkedin" required="">
                     @error('linkedin')
		              <span class="invalid-feedback" role="alert">
		                  <strong>{{ $message }}</strong>
		              </span>
		          @enderror
                 </div>
				 				                  <div class="form-group">
                   <label for="exampleInputEmail1">Instagram Profile Link</label>
                   <input type="text" class="form-control @error('instagram') is-invalid @enderror" id="english" aria-describedby="emailHelp" name="instagram" required="">
                     @error('instagram')
		              <span class="invalid-feedback" role="alert">
		                  <strong>{{ $message }}</strong>
		              </span>
		          @enderror
                 </div>

 
                 <div class="form-group">
                   <label for="exampleInputPassword1">Staff</label>
                   <input type="file" class="form-control "  required="" name="ads">
                 </div>

                   <div class="form-group">
                   <label for="exampleInputPassword1">Type</label>
                   <select class="form-control" name="type" required>
                   	     <option value="2">Staff</option>
                      <option value="1">Management</option>
                   </select>
                   
                 </div>
          
          
                 <button type="submit" class="btn btn-success btn-block">Submit</button>
               </form>
            </div>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>

@endsection