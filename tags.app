!_TAG_FILE_FORMAT	2	/extended format; --format=1 will not append ;" to lines/
!_TAG_FILE_SORTED	1	/0=unsorted, 1=sorted, 2=foldcase/
!_TAG_PROGRAM_AUTHOR	Darren Hiebert	/dhiebert@users.sourceforge.net/
!_TAG_PROGRAM_NAME	Exuberant Ctags	//
!_TAG_PROGRAM_URL	http://ctags.sourceforge.net	/official site/
!_TAG_PROGRAM_VERSION	5.9~svn20110310	//
AppServiceProvider	app/Providers/AppServiceProvider.php	/^class AppServiceProvider extends ServiceProvider$/;"	c
Article	app/Models/Article.php	/^class Article extends Model$/;"	c
ArticleController	app/Http/Controllers/ArticleController.php	/^class ArticleController extends Controller$/;"	c
ArticleFactory	database/factories/ArticleFactory.php	/^class ArticleFactory extends Factory$/;"	c
ArticleResource	app/Http/Resources/ArticleResource.php	/^class ArticleResource extends JsonResource$/;"	c
ArticleService	app/Services/ArticleService.php	/^class ArticleService {$/;"	c
ArticleStoreRequest	app/Http/Requests/ArticleStoreRequest.php	/^class ArticleStoreRequest extends FormRequest$/;"	c
ArticleUpdateRequest	app/Http/Requests/ArticleUpdateRequest.php	/^class ArticleUpdateRequest extends FormRequest$/;"	c
AuthServiceProvider	app/Providers/AuthServiceProvider.php	/^class AuthServiceProvider extends ServiceProvider$/;"	c
Authenticate	app/Http/Middleware/Authenticate.php	/^class Authenticate extends Middleware$/;"	c
BroadcastServiceProvider	app/Providers/BroadcastServiceProvider.php	/^class BroadcastServiceProvider extends ServiceProvider$/;"	c
Category	app/Models/Category.php	/^class Category extends Model$/;"	c
CategoryFactory	database/factories/CategoryFactory.php	/^class CategoryFactory extends Factory$/;"	c
ConfirmPasswordController	app/Http/Controllers/Auth/ConfirmPasswordController.php	/^class ConfirmPasswordController extends Controller$/;"	c
Controller	app/Http/Controllers/Controller.php	/^class Controller extends BaseController$/;"	c
CreateArticlesTable	database/migrations/2022_02_05_172038_create_articles_table.php	/^class CreateArticlesTable extends Migration$/;"	c
CreateCategoriesTable	database/migrations/2022_02_08_004257_create_categories_table.php	/^class CreateCategoriesTable extends Migration$/;"	c
DatabaseSeeder	database/seeders/DatabaseSeeder.php	/^class DatabaseSeeder extends Seeder$/;"	c
EncryptCookies	app/Http/Middleware/EncryptCookies.php	/^class EncryptCookies extends Middleware$/;"	c
EventServiceProvider	app/Providers/EventServiceProvider.php	/^class EventServiceProvider extends ServiceProvider$/;"	c
ForgotPasswordController	app/Http/Controllers/Auth/ForgotPasswordController.php	/^class ForgotPasswordController extends Controller$/;"	c
Handler	app/Exceptions/Handler.php	/^class Handler extends ExceptionHandler$/;"	c
HomeController	app/Http/Controllers/HomeController.php	/^class HomeController extends Controller$/;"	c
Kernel	app/Console/Kernel.php	/^class Kernel extends ConsoleKernel$/;"	c
Kernel	app/Http/Kernel.php	/^class Kernel extends HttpKernel$/;"	c
LoginController	app/Http/Controllers/Auth/LoginController.php	/^class LoginController extends Controller$/;"	c
PreventRequestsDuringMaintenance	app/Http/Middleware/PreventRequestsDuringMaintenance.php	/^class PreventRequestsDuringMaintenance extends Middleware$/;"	c
RedirectIfAuthenticated	app/Http/Middleware/RedirectIfAuthenticated.php	/^class RedirectIfAuthenticated$/;"	c
RegisterController	app/Http/Controllers/Auth/RegisterController.php	/^class RegisterController extends Controller$/;"	c
ResetPasswordController	app/Http/Controllers/Auth/ResetPasswordController.php	/^class ResetPasswordController extends Controller$/;"	c
RouteServiceProvider	app/Providers/RouteServiceProvider.php	/^class RouteServiceProvider extends ServiceProvider$/;"	c
Tag	app/Models/Tag.php	/^class Tag extends Model$/;"	c
Tag	app/Rules/Tag.php	/^class Tag implements Rule$/;"	c
TagController	app/Http/Controllers/TagController.php	/^class TagController extends Controller$/;"	c
TrimStrings	app/Http/Middleware/TrimStrings.php	/^class TrimStrings extends Middleware$/;"	c
TrustHosts	app/Http/Middleware/TrustHosts.php	/^class TrustHosts extends Middleware$/;"	c
TrustProxies	app/Http/Middleware/TrustProxies.php	/^class TrustProxies extends Middleware$/;"	c
User	app/Models/User.php	/^class User extends Authenticatable$/;"	c
VerificationController	app/Http/Controllers/Auth/VerificationController.php	/^class VerificationController extends Controller$/;"	c
VerifyCsrfToken	app/Http/Middleware/VerifyCsrfToken.php	/^class VerifyCsrfToken extends Middleware$/;"	c
__construct	app/Http/Controllers/Auth/ConfirmPasswordController.php	/^    public function __construct()$/;"	f
__construct	app/Http/Controllers/Auth/LoginController.php	/^    public function __construct()$/;"	f
__construct	app/Http/Controllers/Auth/RegisterController.php	/^    public function __construct()$/;"	f
__construct	app/Http/Controllers/Auth/VerificationController.php	/^    public function __construct()$/;"	f
__construct	app/Http/Controllers/HomeController.php	/^    public function __construct()$/;"	f
article	app/Models/Category.php	/^    public function article() {$/;"	f
article	app/Services/ArticleService.php	/^        $article = Article::create($request->all() + $pathInfo);$/;"	v
articles	app/Http/Controllers/ArticleController.php	/^        $articles = Article::with(['category', 'tags'])->paginate(10);   $/;"	v
articles	app/Models/Tag.php	/^    public function articles() {$/;"	f
authorize	app/Http/Requests/ArticleStoreRequest.php	/^    public function authorize()$/;"	f
authorize	app/Http/Requests/ArticleUpdateRequest.php	/^    public function authorize()$/;"	f
boot	app/Providers/AppServiceProvider.php	/^    public function boot()$/;"	f
boot	app/Providers/AuthServiceProvider.php	/^    public function boot()$/;"	f
boot	app/Providers/BroadcastServiceProvider.php	/^    public function boot()$/;"	f
boot	app/Providers/EventServiceProvider.php	/^    public function boot()$/;"	f
boot	app/Providers/RouteServiceProvider.php	/^    public function boot()$/;"	f
casts	app/Models/User.php	/^    protected $casts = [$/;"	v
categories	app/Http/Controllers/ArticleController.php	/^        $categories = Category::get();$/;"	v
category	app/Models/Article.php	/^    public function category() {$/;"	f
commands	app/Console/Kernel.php	/^    protected function commands()$/;"	f
configureRateLimiting	app/Providers/RouteServiceProvider.php	/^    protected function configureRateLimiting()$/;"	f
create	app/Http/Controllers/ArticleController.php	/^    public function create()$/;"	f
create	app/Http/Controllers/Auth/RegisterController.php	/^    protected function create(array $data)$/;"	f
create	app/Http/Controllers/TagController.php	/^    public function create()$/;"	f
createWithTags	app/Services/ArticleService.php	/^    public function createWithTags($request) {$/;"	f
definition	database/factories/ArticleFactory.php	/^    public function definition()$/;"	f
definition	database/factories/CategoryFactory.php	/^    public function definition()$/;"	f
destroy	app/Http/Controllers/ArticleController.php	/^    public function destroy(Article $article)$/;"	f
destroy	app/Http/Controllers/TagController.php	/^    public function destroy(Tag $tag)$/;"	f
dontFlash	app/Exceptions/Handler.php	/^    protected $dontFlash = [$/;"	v
dontReport	app/Exceptions/Handler.php	/^    protected $dontReport = [$/;"	v
down	database/migrations/2022_02_05_172038_create_articles_table.php	/^    public function down()$/;"	f
down	database/migrations/2022_02_08_004257_create_categories_table.php	/^    public function down()$/;"	f
edit	app/Http/Controllers/ArticleController.php	/^    public function edit(Article $article)$/;"	f
edit	app/Http/Controllers/TagController.php	/^    public function edit(Tag $tag)$/;"	f
except	app/Http/Middleware/EncryptCookies.php	/^    protected $except = [$/;"	v
except	app/Http/Middleware/PreventRequestsDuringMaintenance.php	/^    protected $except = [$/;"	v
except	app/Http/Middleware/TrimStrings.php	/^    protected $except = [$/;"	v
except	app/Http/Middleware/VerifyCsrfToken.php	/^    protected $except = [$/;"	v
fillable	app/Models/Article.php	/^    protected $fillable = [ 'title', 'slug', 'content', 'image_path', 'category_id' ];$/;"	v
fillable	app/Models/Category.php	/^    protected $fillable = ['title'];$/;"	v
fillable	app/Models/Tag.php	/^    protected $fillable = ['title'];$/;"	v
fillable	app/Models/User.php	/^    protected $fillable = [$/;"	v
guards	app/Http/Middleware/RedirectIfAuthenticated.php	/^        $guards = empty($guards) ? [null] : $guards;$/;"	v
handle	app/Http/Middleware/RedirectIfAuthenticated.php	/^    public function handle(Request $request, Closure $next, ...$guards)$/;"	f
headers	app/Http/Middleware/TrustProxies.php	/^    protected $headers =$/;"	v
hidden	app/Models/User.php	/^    protected $hidden = [$/;"	v
hosts	app/Http/Middleware/TrustHosts.php	/^    public function hosts()$/;"	f
image_path	database/factories/ArticleFactory.php	/^        $image_path = $this->faker->image(public_path() . '\/storage\/images', 100, 100, null, false);$/;"	v
index	app/Http/Controllers/ArticleController.php	/^    public function index()$/;"	f
index	app/Http/Controllers/HomeController.php	/^    public function index()$/;"	f
index	app/Http/Controllers/TagController.php	/^    public function index()$/;"	f
listen	app/Providers/EventServiceProvider.php	/^    protected $listen = [$/;"	v
message	app/Rules/Tag.php	/^    public function message()$/;"	f
middleware	app/Http/Kernel.php	/^    protected $middleware = [$/;"	v
middlewareGroups	app/Http/Kernel.php	/^    protected $middlewareGroups = [$/;"	v
passes	app/Rules/Tag.php	/^    public function passes($attribute, $value)$/;"	f
pathInfo	app/Services/ArticleService.php	/^            $pathInfo = [$/;"	v
pathInfo	app/Services/ArticleService.php	/^        $pathInfo = [];$/;"	v
policies	app/Providers/AuthServiceProvider.php	/^    protected $policies = [$/;"	v
prepareForValidation	app/Http/Requests/ArticleStoreRequest.php	/^    public function prepareForValidation() {$/;"	f
prepareForValidation	app/Http/Requests/ArticleUpdateRequest.php	/^    public function prepareForValidation() {$/;"	f
proxies	app/Http/Middleware/TrustProxies.php	/^    protected $proxies;$/;"	v
redirectTo	app/Http/Controllers/Auth/ConfirmPasswordController.php	/^    protected $redirectTo = RouteServiceProvider::HOME;$/;"	v
redirectTo	app/Http/Controllers/Auth/LoginController.php	/^    protected $redirectTo = RouteServiceProvider::HOME;$/;"	v
redirectTo	app/Http/Controllers/Auth/RegisterController.php	/^    protected $redirectTo = RouteServiceProvider::HOME;$/;"	v
redirectTo	app/Http/Controllers/Auth/ResetPasswordController.php	/^    protected $redirectTo = RouteServiceProvider::HOME;$/;"	v
redirectTo	app/Http/Controllers/Auth/VerificationController.php	/^    protected $redirectTo = RouteServiceProvider::HOME;$/;"	v
redirectTo	app/Http/Middleware/Authenticate.php	/^    protected function redirectTo($request)$/;"	f
register	app/Exceptions/Handler.php	/^    public function register()$/;"	f
register	app/Providers/AppServiceProvider.php	/^    public function register()$/;"	f
routeMiddleware	app/Http/Kernel.php	/^    protected $routeMiddleware = [$/;"	v
rules	app/Http/Requests/ArticleStoreRequest.php	/^    public function rules()$/;"	f
rules	app/Http/Requests/ArticleUpdateRequest.php	/^    public function rules()$/;"	f
run	database/seeders/DatabaseSeeder.php	/^    public function run()$/;"	f
saveTags	app/Services/ArticleService.php	/^    public function saveTags($article, $tags) {$/;"	f
schedule	app/Console/Kernel.php	/^    protected function schedule(Schedule $schedule)$/;"	f
show	app/Http/Controllers/ArticleController.php	/^    public function show(Article $article)$/;"	f
show	app/Http/Controllers/TagController.php	/^    public function show(Tag $tag)$/;"	f
slug	database/factories/ArticleFactory.php	/^        $slug  = Str::slug($title);$/;"	v
store	app/Http/Controllers/ArticleController.php	/^    public function store(ArticleStoreRequest $request, ArticleService $articleService)$/;"	f
store	app/Http/Controllers/TagController.php	/^    public function store(Request $request)$/;"	f
tagModel	app/Services/ArticleService.php	/^                $tagModel = Tag::create(['title' => $tag]);$/;"	v
tagModel	app/Services/ArticleService.php	/^            $tagModel = Tag::where('title', $tag)->first();$/;"	v
tags	app/Models/Article.php	/^    public function tags() {$/;"	f
tagsId	app/Services/ArticleService.php	/^        $tagsId = $this->saveTags($article, $request->input('tags')); $/;"	v
tagsId	app/Services/ArticleService.php	/^        $tagsId = [];$/;"	v
tags_count	app/Rules/Tag.php	/^                $tags_count = 0;$/;"	v
title	database/factories/ArticleFactory.php	/^        $title = $this->faker->unique()->text(15); $/;"	v
toArray	app/Http/Resources/ArticleResource.php	/^    public function toArray($request)$/;"	f
up	database/migrations/2022_02_05_172038_create_articles_table.php	/^    public function up()$/;"	f
up	database/migrations/2022_02_08_004257_create_categories_table.php	/^    public function up()$/;"	f
update	app/Http/Controllers/ArticleController.php	/^    public function update(ArticleUpdateRequest $request, Article $article, ArticleService $articleService)$/;"	f
update	app/Http/Controllers/TagController.php	/^    public function update(Request $request, Tag $tag)$/;"	f
updateWithTags	app/Services/ArticleService.php	/^    public function updateWithTags($request, Article $article) {$/;"	f
val_len	app/Rules/Tag.php	/^                $val_len = count($value);$/;"	v
validator	app/Http/Controllers/Auth/RegisterController.php	/^    protected function validator(array $data)$/;"	f
