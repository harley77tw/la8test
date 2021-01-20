<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Article;
use Illuminate\Support\Facades\Validator;
use App\Http\Requests\FormRequest; //�ŧiRequest
use App\Services\ProductService;
class APIDocsController extends Controller
{
    /**
     * �Q��getJSON()����JSON�榡��Swagger�w�q
     *
     * @SWG\Swagger(
     *   @SWG\Info(
     *     description="�A�i�H�ϥ�XXX APIŪ���P�g�JREST Resource",
     *     title="API Document",
     *     version="1.0.0"
     *   )
     * )
     */
    public function getJSON()
    {
        //���wSwagger�n���y�����|�A\Wsagger\scan()�|Ū���o�Ӹ��|�U�����
        //�åB�NŪ���쪺Swagger Annotations���ഫ��JSON�榡
        $swagger = \Swagger\scan(app_path('Http/Controllers/'));
        return response()->json($swagger, 200);
    }
}

