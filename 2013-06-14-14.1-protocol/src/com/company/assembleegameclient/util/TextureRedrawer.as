package com.company.assembleegameclient.util
{
   import flash.filters.GlowFilter;
   import flash.utils.Dictionary;
   import flash.display.Shape;
   import flash.geom.Matrix;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.Bitmap;
   import com.company.util.PointUtil;
   import flash.geom.Rectangle;
   import flash.geom.ColorTransform;
   import com.company.util.AssetLibrary;
   import flash.utils.ByteArray;
   import flash.display.Shader;
   import flash.filters.ShaderFilter;
   import flash.display.GradientType;
   import flash.filters.BitmapFilterQuality;


   public class TextureRedrawer extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function TextureRedrawer() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const dojojoro:int = 12;

      public static const juzynupyg:int = 2*dojojoro;

      private static const BORDER:int = 4;

      private static const GRADIENT_MAX_SUB:uint = 2631720;

      private static const OUTLINE_FILTER:GlowFilter = new GlowFilter(0,0.8,1.4,1.4,255,BitmapFilterQuality.LOW,false,false);

      private static const GLOW_FILTER:GlowFilter = new GlowFilter(0,0.3,12,12,2,BitmapFilterQuality.LOW,false,false);

      private static var cache_:Dictionary = new Dictionary();

      private static var tur:Dictionary = new Dictionary();

      private static var gradient_:Shape = getGradient();

      private static var drawMatrix_:Matrix = getDrawMatrix();

      private static var tempMatrix_:Matrix = new Matrix();

      public static function redraw(param1:BitmapData, param2:int, param3:Boolean, param4:uint, param5:uint, param6:Boolean=true, param7:Number=5) : BitmapData {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc8_:Dictionary = null;
         var _loc9_:BitmapData = null;
         if(param6)
         {
            _loc8_=cache_[param2];
            if(_loc8_==null)
            {
               _loc8_=new Dictionary();
               cache_[param2]=_loc8_;
            }
            _loc9_=_loc8_[param1];
            if(_loc9_!=null)
            {
               return _loc9_;
            }
         }
         _loc9_=resize(param1,null,param2,param3,0,0,param7);
         _loc9_=outlineGlow(_loc9_,param4,param5);
         if(param6)
         {
            _loc8_[param1]=_loc9_;
         }
         return _loc9_;
      }

      public static function resize(param1:BitmapData, param2:BitmapData, param3:int, param4:Boolean, param5:int, param6:int, param7:Number=5) : BitmapData {
         var _loc12_:* = true;
         var _loc13_:* = false;
         if(!(param2==null)&&(!(param5==0)||!(param6==0)))
         {
            param1=retexture(param1,param2,param5,param6);
            param3=param3/5;
         }
         var _loc8_:int = param7*param3/100*param1.width;
         var _loc9_:int = param7*param3/100*param1.height;
         var _loc10_:Matrix = new Matrix();
         _loc10_.scale(_loc8_/param1.width,_loc9_/param1.height);
         _loc10_.translate(dojojoro,dojojoro);
         var _loc11_:BitmapData = new BitmapData(_loc8_+juzynupyg,_loc9_+(param4?dojojoro:1)+dojojoro,true,0);
         _loc11_.draw(param1,_loc10_);
         return _loc11_;
      }

      public static function outlineGlow(param1:BitmapData, param2:uint, param3:uint, param4:Number=1.4) : BitmapData {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc5_:BitmapData = param1.clone();
         tempMatrix_.identity();
         tempMatrix_.scale(param1.width/256,param1.height/256);
         _loc5_.draw(gradient_,tempMatrix_,null,BlendMode.SUBTRACT);
         var _loc6_:Bitmap = new Bitmap(param1);
         _loc5_.draw(_loc6_,null,null,BlendMode.ALPHA);
         OUTLINE_FILTER.blurX=param4;
         OUTLINE_FILTER.blurY=param4;
         OUTLINE_FILTER.color=param2;
         _loc5_.applyFilter(_loc5_,_loc5_.rect,PointUtil.wota,OUTLINE_FILTER);
         if(param3!=4.294967295E9)
         {
            GLOW_FILTER.color=param3;
            _loc5_.applyFilter(_loc5_,_loc5_.rect,PointUtil.wota,GLOW_FILTER);
         }
         return _loc5_;
      }

      public static function redrawSolidSquare(param1:uint, param2:int) : BitmapData {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:Dictionary = cache_[param2];
         if(_loc3_==null)
         {
            _loc3_=new Dictionary();
            cache_[param2]=_loc3_;
         }
         var _loc4_:BitmapData = _loc3_[param1];
         if(_loc4_!=null)
         {
            return _loc4_;
         }
         _loc4_=new BitmapData(param2+4+4,param2+4+4,true,0);
         _loc4_.fillRect(new Rectangle(4,4,param2,param2),4.27819008E9|param1);
         _loc4_.applyFilter(_loc4_,_loc4_.rect,PointUtil.wota,OUTLINE_FILTER);
         _loc3_[param1]=_loc4_;
         return _loc4_;
      }

      public static function clearCache() : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc1_:BitmapData = null;
         var _loc2_:Dictionary = null;
         var _loc3_:Dictionary = null;
         for each (_loc2_ in cache_)
         {
            for each (_loc1_ in _loc2_)
            {
               _loc1_.dispose();
            }
         }
         cache_=new Dictionary();
         for each (_loc3_ in tur)
         {
            for each (_loc1_ in _loc3_)
            {
               _loc1_.dispose();
            }
         }
         tur=new Dictionary();
         return;
      }

      public static function dig(param1:BitmapData, param2:Number) : BitmapData {
         var _loc5_:* = false;
         var _loc6_:* = true;
         if(param2==1)
         {
            return param1;
         }
         var _loc3_:Dictionary = tur[param2];
         if(_loc3_==null)
         {
            _loc3_=new Dictionary();
            tur[param2]=_loc3_;
         }
         var _loc4_:BitmapData = _loc3_[param1];
         if(_loc4_!=null)
         {
            return _loc4_;
         }
         _loc4_=param1.clone();
         _loc4_.colorTransform(_loc4_.rect,new ColorTransform(param2,param2,param2));
         _loc3_[param1]=_loc4_;
         return _loc4_;
      }

      public static var reququkup:BitmapData = null;

      private static function getTexture(param1:int, param2:BitmapData) : BitmapData {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc3_:BitmapData = null;
         var _loc4_:* = param1>>24&255;
         var _loc5_:* = param1&16777215;
         switch(null)
         {
            case 0:
               _loc3_=param2;
               break;
            case 1:
               param2.setPixel(0,0,_loc5_);
               _loc3_=param2;
               break;
            case 4:
               _loc3_=AssetLibrary.tem("textile4x4",_loc5_);
               break;
            case 5:
               _loc3_=AssetLibrary.tem("textile5x5",_loc5_);
               break;
            case 9:
               _loc3_=AssetLibrary.tem("textile9x9",_loc5_);
               break;
            case 10:
               _loc3_=AssetLibrary.tem("textile10x10",_loc5_);
               break;
            case 255:
               _loc3_=reququkup;
               break;
            default:
               _loc3_=param2;
         }
         return _loc3_;
      }

      private static var textureShaderEmbed_:Class = TextureRedrawer_textureShaderEmbed_;

      private static var textureShaderData_:ByteArray = new textureShaderEmbed_() as ByteArray;

      private static var colorTexture1:BitmapData = new BitmapData(1,1,false);

      private static var colorTexture2:BitmapData = new BitmapData(1,1,false);

      private static function retexture(param1:BitmapData, param2:BitmapData, param3:int, param4:int) : BitmapData {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc5_:Matrix = new Matrix();
         _loc5_.scale(5,5);
         var _loc6_:BitmapData = new BitmapData(param1.width*5,param1.height*5,true,0);
         _loc6_.draw(param1,_loc5_);
         var _loc7_:BitmapData = getTexture(param3,colorTexture1);
         var _loc8_:BitmapData = getTexture(param4,colorTexture2);
         var _loc9_:Shader = new Shader(textureShaderData_);
         _loc9_.data.src.input=_loc6_;
         _loc9_.data.mask.input=param2;
         _loc9_.data.texture1.input=_loc7_;
         _loc9_.data.texture2.input=_loc8_;
         _loc9_.data.texture1Size.value=[param3==0?0:_loc7_.width];
         _loc9_.data.texture2Size.value=[param4==0?0:_loc8_.width];
         _loc6_.applyFilter(_loc6_,_loc6_.rect,PointUtil.wota,new ShaderFilter(_loc9_));
         return _loc6_;
      }

      private static function getGradient() : Shape {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Shape = new Shape();
         var _loc2_:Matrix = new Matrix();
         _loc2_.createGradientBox(256,256,Math.PI/2,0,0);
         _loc1_.graphics.beginGradientFill(GradientType.LINEAR,[0,GRADIENT_MAX_SUB],[1,1],[127,255],_loc2_);
         _loc1_.graphics.drawRect(0,0,256,256);
         _loc1_.graphics.endFill();
         return _loc1_;
      }

      private static function getDrawMatrix() : Matrix {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Matrix = new Matrix();
         _loc1_.scale(8,8);
         _loc1_.translate(BORDER,BORDER);
         return _loc1_;
      }
   }

}