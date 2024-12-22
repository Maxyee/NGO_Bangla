@extends('layouts.app')
@section('content')
<!-- Content Header (Page header) -->
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0 text-dark">SEO seos</h1>
      </div><!-- /.col -->
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
          <li class="breadcrumb-item active">SEO seos</li>
        </ol>
      </div><!-- /.col -->
    </div><!-- /.row -->
  </div><!-- /.container-fluid -->
</div>



          <div class="card">
            <div class="card-header">
              <h3 class="card-title"> SEO seos</h3>
            
            </div>
            <!-- /.card-header -->
            <div class="card-body col-lg-12">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h4 class="modal-title">SEO seod</h4>
                       
                      </div>

                      <div class="modal-body">
                         <form action="{{ route('update.seo',$seo->id) }}" method="Post">
                         	@csrf
                           <div class="form-group">
                             <label for="exampleInputEmail1">Author</label>
                             <input type="text" class="form-control " value="{{ $seo->meta_author }}" aria-describedby="emailHelp" name="meta_author" required="">
                           </div>
                           <div class="form-group">
                             <label for="exampleInputEmail1">Meta Title</label>
                             <input type="text" class="form-control " value="{{ $seo->meta_title }}" aria-describedby="emailHelp" name="meta_title" required="">
                           </div>
                             <div class="form-group">
                             <label for="exampleInputEmail1">Meta Keyword</label>
                             <input type="text" class="form-control " value="{{ $seo->meta_keyword }}" aria-describedby="emailHelp" name="meta_keyword" required="">
                           </div>
                           <div class="form-group">
                             <label for="exampleInputEmail1">Meta Description</label>
                             <input type="text" class="form-control " value="{{ $seo->meta_description }}" aria-describedby="emailHelp" name="meta_description" required="">
                           </div>
						   
						   
                            <div class="form-group">
                             <label for="exampleInputEmail1">Client1 Name</label>
                             <input type="text" class="form-control " value="{{ $seo->client1_name }}" aria-describedby="emailHelp" name="client1_name" required="">
                           </div>
						  <div class="form-group">
                             <label for="exampleInputEmail1">Client 1 Testimonial</label>
                               <textarea class="textarea" placeholder="Place some text here" name="client1_testimonial" 
                          style="width: 100%; height: 300px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
                          		{{ $seo->client1_testimonial }}
                          </textarea>
                           </div>
                            <div class="form-group">
                             <label for="exampleInputEmail1">Client2 Name</label>
                             <input type="text" class="form-control " value="{{ $seo->client2_name }}" aria-describedby="emailHelp" name="client2_name" required="">
                           </div>
						   	<div class="form-group">
                             <label for="exampleInputEmail1">Client 2 Testimonial</label>
                               <textarea class="textarea" placeholder="Place some text here" name="client2_testimonial" 
                          style="width: 100%; height: 300px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
                          		{{ $seo->client2_testimonial }}
                          </textarea>
                           </div>
						   
						                               <div class="form-group">
                             <label for="exampleInputEmail1">Client3 Name</label>
                             <input type="text" class="form-control " value="{{ $seo->client3_name }}" aria-describedby="emailHelp" name="client3_name" required="">
                           </div>
						   						  <div class="form-group">
                             <label for="exampleInputEmail1">Client 3 Testimonial</label>
                               <textarea class="textarea" placeholder="Place some text here" name="client3_testimonial" 
                          style="width: 100%; height: 300px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
                          		{{ $seo->client3_testimonial }}
                          </textarea>
                           </div>
						                               <div class="form-group">
                             <label for="exampleInputEmail1">Client4 Name</label>
                             <input type="text" class="form-control " value="{{ $seo->client4_name }}" aria-describedby="emailHelp" name="client4_name" required="">
                           </div>
						   						  <div class="form-group">
                             <label for="exampleInputEmail1">Client 4 Testimonial</label>
                               <textarea class="textarea" placeholder="Place some text here" name="client4_testimonial" 
                          style="width: 100%; height: 300px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
                          		{{ $seo->client4_testimonial }}
                          </textarea>
                           </div>
						                               <div class="form-group">
                             <label for="exampleInputEmail1">Client5 Name</label>
                             <input type="text" class="form-control " value="{{ $seo->client5_name }}" aria-describedby="emailHelp" name="client5_name" required="">
                           </div>
						   						  <div class="form-group">
                             <label for="exampleInputEmail1">Client 5 Testimonial</label>
                               <textarea class="textarea" placeholder="Place some text here" name="client5_testimonial" 
                          style="width: 100%; height: 300px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
                          		{{ $seo->client5_testimonial }}
                          </textarea>
                           </div>
						                               <div class="form-group">
                             <label for="exampleInputEmail1">Client6 Name</label>
                             <input type="text" class="form-control " value="{{ $seo->client6_name }}" aria-describedby="emailHelp" name="client6_name" required="">
                           </div>
                           						  <div class="form-group">
                             <label for="exampleInputEmail1">Client 6 Testimonial</label>
                               <textarea class="textarea" placeholder="Place some text here" name="client6_testimonial" 
                          style="width: 100%; height: 300px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
                          		{{ $seo->client6_testimonial }}
                          </textarea>
                           </div>
						   
						   
						   

                           <button type="submit" class="btn btn-success btn-block">Update</button>
                         </form>
                      </div>
                    </div>
            </div>
            <!-- /.card-body -->
          </div>


@endsection