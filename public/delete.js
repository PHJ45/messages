$(function(){
  
  $('body').on('click','.close', deletePost);

});

function deletePost()
  {

  //console.log($(this).parent());
  $(this).parent().remove(); 
}