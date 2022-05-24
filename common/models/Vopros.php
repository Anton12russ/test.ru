<?php

namespace common\models;
use common\models\User;
use Yii;

/**
 * This is the model class for table "article".
 *
 * @property int $id
 * @property string $title
 * @property int $user_id
 * @property int $status
 * @property int $cat
 * @property string $text
 * @property string $rayting
 */
class Vopros extends \yii\db\ActiveRecord
{
	
	
    public static function tableName()
    {
        return 'vopros';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['text'], 'required'],
            [['user_id'], 'integer'],
			[['user_id'],  'default', 'value' => Yii::$app->user->id],
            [['text'], 'string'],

		
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
         
            'user_id' => 'Пользователь',
          
            'text' => 'Текст',
           			
			
        ];
    }
	

}
