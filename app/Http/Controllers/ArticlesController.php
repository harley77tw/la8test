<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Article;
class ArticlesController extends Controller
{
    /**
     * Display a listing of the resource xxxaaa.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $articles=Article::all();

        return view("articles.index",['articles'=>$articles]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
       return view("articles.create");
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $article=new Article;
        $article->title=$request['title'];
        $article->content=$request['content'];

       // auth()->user()->articles()->create($content);
//       articles()->create($content);
        $article->save();
        return redirect('/articles');
        //return redirect()->route('/');
//        return redirect::back();
  //      return redirect()->back();
 }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
                 $article=Article::find($id);
         
        return view("articles.show",['article'=>$article]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
         $article=Article::find($id);
         
        return view("articles.edit",['article'=>$article]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $article=Article::find($id);
        
        $content=$request->validate([
        'title'=>'required',
        'content'=>'required'
        ]);
        
        $article->update($content);
        
        
         return redirect('/articles');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        echo "destroy".$id;
         $article=Article::find($id);
        
        $article->delete();
           return redirect('/articles');
        
    }
}
