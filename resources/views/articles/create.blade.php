<form action="{{route('articles.store')}}" method="post">
@csrf
<input name="title" value="{{old('title')}}">
<textarea name="content"></textarea>
<input type="submit" value="submit">

</form>