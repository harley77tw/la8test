<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Article;
use Illuminate\Support\Facades\Validator;
use App\Http\Requests\FormRequest; //宣告Request
use App\Services\ProductService;
class ArticlesController extends Controller
{
     protected $productService;
    /**
     * Display a listing of the resource xxxaaaxxxx.
     *
     * @return \Illuminate\Http\Response
     */
     public function __construct()
    {
        $this->middleware('OldMiddleware');
    }
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

/*
    public function store(Request $request){
        $validator = Validator::make($request->all(), [
            'title' => 'required|unique:posts|max:255',
            'body' => 'required',
        ]);

        if ($validator->fails()) {
            return redirect('post/create')
                        ->withErrors($validator)
                        ->withInput();
        }
    }
*/

    public function update(Request $request, $id)
    {
/*
        $article=Article::find($id);        
        $content=$request->validate([
        'title'=>'required',
        'content'=>'required'
        ]);
        $article->update($content);               
        return redirect('/articles');

*/
     /*   
        $validator = Validator::make($request->all(), [
            'title' => 'required|unique:posts|max:255',
            'content' => 'required',
        ]);
        

        if ($validator->fails()) {
            $msg="ok";
            }else{
            $msg=$validator->messages();
        }
     */
             try {
            $rules = [
                "title" => "required|integer",
                "content" => "required|integer",
            ];
            $message = [
                // 欄位名稱.驗證方法名稱
                "title.required" => "使用者 ID 為避填資料",
                "title.exists" => '使用者 ID 必須存在於資料庫中',
                "content.integer" => "文章 ID 必須為數值",
                "content.exists" => "文章 ID 不存在"
            ];
            $validResult = $request->validate($rules, $message);
          
        } catch (ValidationException $exception) {
            $errorMessage =  $exception->validator->getMessageBag()->getMessages();
               
        }
        if(isset($errorMessage)){
            $a="ok";
         }else{   
            $a=$errorMessage;
        }
      return $a;
      
        
//return $request->all();

//return 123;


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
