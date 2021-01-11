Articles首頁
<br>
<a href="articles/create">新增文章</a>
<p>
@foreach($articles as $article)

{{$article->title}}</br>
{{$article->content}}</br>
<a href="articles/{{$article->id}}">SHOW</a>
<a href="articles/{{$article->id}}/edit">EDIT</a>

<form action="{{route('articles.destroy',$article)}}" method="post">
@csrf
@method('delete')
<input type="submit" value="delete">
</form>
<hr>
@endforeach

</p>