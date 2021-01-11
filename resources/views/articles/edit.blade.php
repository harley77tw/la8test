EDIT
<form action="{{route('articles.update',$article)}}" method="post">
@csrf
@method('patch')
<input name="title" value="{{$article->title}}">
<textarea name="content">{{$article->content}}</textarea>
<input type="submit" value="submit">

</form>