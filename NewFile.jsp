<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap 4</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
      h1 { margin: 50px 0px; }
    </style>
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="col-12">
          <h1>Popovers</h1>
          <p>
            <button type="button" class="btn btn-primary" data-toggle="popover" title="Popover title" data-content="Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor">Click</button>
          </p>
        </div>
      </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script>
      $( function () {
        $( '[data-toggle="popover"]' ).popover()
      } );
    </script>
  </body>
</html>
