<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;
/** @var yii\web\View $this */

$this->title = 'Тестовое задание';
$this->registerJsFile('/js/script.js',['depends' => [\yii\web\JqueryAsset::className()]]);
use yii\widgets\Pjax;
?>
<?php Pjax::begin([ 'id' => 'pjaxContent']); ?>
<div class="site-index">

    <div class="jumbotron text-center bg-transparent">
        <h1 class="display-4">Тестовое задание</h1>
    </div>

    <div class="body-content">

        <div class="row">

    <?if (Yii::$app->user->isGuest) {?>
         <div class="col-md-12"><a href="/login"> Авторизируйтесь </a>  или  <a href="/signup"> Зарегистрируйтесь </a>  для того чтобы задать вопрос.</div>
    <?}else{?>
 
 
 
 
 
    <?if($save) {?>
		<div class=""> <div class="alert alert-warning">В системе уже задавали подобный вопрос (<?=count($all)?>) раз</div>
		 <br>
		 <?$count = count($to)-1;?>
		 <div class="alert alert-warning">Вы уже задавали подобный вопрос (<?=$count?>) раз</div>
	     <br>
		<button class="btn btn-success answer"  data-toggle="modal" data-target="#myModal">Получить ответ</button>
		<br><br>
		<a href="/">Задать еще одни вопрос.</a>
		</div>
	<?}else{?>


<?php $form = ActiveForm::begin(['options' => ['enctype'=>'multipart/form-data', 'data-pjax' => true,], 'enableClientValidation' => false,]);?>
    <?= $form->field($model, 'text')->textarea(['maxlength' => true])->label('Ваш вопрос <span class="req_val">*</span>') ?>

  

    <div class="form-group">
        <?= Html::submitButton('Отправить', ['class' => 'btn btn-success']) ?>
    </div>

  
   
    <?php ActiveForm::end(); ?>
	<?}?>

<?}?>
        </div>

    </div>
</div>
<?php Pjax::end(); ?>








<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

      </div>
      <div class="modal-body"></div>
    </div>
  </div>
</div>
