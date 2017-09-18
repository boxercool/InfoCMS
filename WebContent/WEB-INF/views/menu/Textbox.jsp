<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">.entry:not(:first-of-type)
{
    margin-top: 10px;
}

.glyphicon
{
    font-size: 12px;
}</style>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.1/jquery.min.js"></script>


<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
		        <div class="control-group" id="fields">
		            <label class="control-label" for="field1">Nice Multiple Form Fields</label>
			            <div class="controls"> 
			                <form role="form" autocomplete="off">
			                    <div class="entry input-group col-xs-3">
			                        <input class="form-control" name="fields[]" type="text" placeholder="Type something" />
			                    	<span class="input-group-btn">
			                            <button class="btn btn-success btn-add" type="button">
			                                <span class="glyphicon glyphicon-plus"></span>
			                            </button>
						    			<button class="btn btn-success btn-minus" type="button">
			                                <span class="glyphicon /plus"></span>
			                            </button>
			                        </span><br>
						   
			                    </div>
			                </form>
			            <br>
			          
			            </div>
		        </div>
		</div>
	</div>
</body>
</html>
<script>

$(function()
		{
		    $(document).on('click', '.btn-add', function(e)
		    {
		        e.preventDefault();

		           var controlForm = $('.controls form:first'),
            		   currentEntry = $(this).parents('.entry:first'),
                           newEntry = $(currentEntry.clone()).appendTo(controlForm);

                           newEntry.find('input').val('');
                           controlForm.find('.entry:not(:last) .btn-add')
                          .removeClass('btn-add').addClass('btn-add')
                          .removeClass('btn-success').addClass('btn-danger')
                          .html('<span class="glyphicon glyphicon-minus"></span>');
                    }).on('click', '.btn-minus', function(e)
                    {
            		$(this).parents('.entry:first').remove();

		        e.preventDefault();
		        return false;
			});
		});

</script>