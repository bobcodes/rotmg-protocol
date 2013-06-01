package dec
{
[CLASS1823]   import __AS3__.vec.Vector;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.geom.Matrix;
   import flash.display.Sprite;
   import flash.display.Bitmap;


   public class Tilazanet extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Tilazanet(param1:int, param2:int, param3:Boolean, param4:uint) {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         super();
         this.width_=param1;
         this.height_=param2;
         this.hytewe=param4;
         this.lywudiw=Math.ceil(this.width_/hajiwetic);
         this.ridut=Math.ceil(this.height_/hajiwetic);
         this.vewipuco=new Vector.<BitmapData>(this.lywudiw*this.ridut,true);
         var _loc5_:* = 0;
         while(_loc5_<this.lywudiw)
         {
            _loc6_=0;
            while(_loc6_<this.ridut)
            {
               _loc7_=Math.min(hajiwetic,this.width_-_loc5_*hajiwetic);
               _loc8_=Math.min(hajiwetic,this.height_-_loc6_*hajiwetic);
               this.vewipuco[_loc5_+_loc6_*this.lywudiw]=new BitmapData(_loc7_,_loc8_,param3,this.hytewe);
               _loc6_++;
            }
            _loc5_++;
         }
         return;
      }

      private static const hajiwetic:int = 256;

      public var width_:int;

      public var height_:int;

      public var hytewe:uint;

      private var lywudiw:int;

      private var ridut:int;

      private var vewipuco:Vector.<BitmapData>;

      public function copyTo(param1:BitmapData, param2:Rectangle, param3:Rectangle) : void {
         var _loc15_:* = true;
         var _loc16_:* = false;
         var _loc12_:* = 0;
         var _loc13_:BitmapData = null;
         var _loc14_:Rectangle = null;
         var _loc4_:Number = param3.width/param2.width;
         var _loc5_:Number = param3.height/param2.height;
         var _loc6_:int = int(param3.x/hajiwetic);
         var _loc7_:int = int(param3.y/hajiwetic);
         var _loc8_:int = Math.ceil(param3.right/hajiwetic);
         var _loc9_:int = Math.ceil(param3.bottom/hajiwetic);
         var _loc10_:Matrix = new Matrix();
         var _loc11_:int = _loc6_;
         while(_loc11_<_loc8_)
         {
            _loc12_=_loc7_;
            while(_loc12_<_loc9_)
            {
               _loc13_=this.vewipuco[_loc11_+_loc12_*this.lywudiw];
               _loc10_.identity();
               _loc10_.scale(_loc4_,_loc5_);
               _loc10_.translate(param3.x-_loc11_*hajiwetic-param2.x*_loc4_,param3.y-_loc12_*hajiwetic-param2.x*_loc5_);
               _loc14_=new Rectangle(param3.x-_loc11_*hajiwetic,param3.y-_loc12_*hajiwetic,param3.width,param3.height);
               _loc13_.draw(param1,_loc10_,null,null,_loc14_,false);
               _loc12_++;
            }
            _loc11_++;
         }
         return;
      }

      public function goqocama(param1:Rectangle, param2:BitmapData, param3:Rectangle) : void {
         var _loc15_:* = true;
         var _loc16_:* = false;
         var _loc13_:* = 0;
         var _loc14_:BitmapData = null;
         var _loc4_:Number = param3.width/param1.width;
         var _loc5_:Number = param3.height/param1.height;
         var _loc6_:int = Math.max(0,int(param1.x/hajiwetic));
         var _loc7_:int = Math.max(0,int(param1.y/hajiwetic));
         var _loc8_:int = Math.min(this.lywudiw-1,int(param1.right/hajiwetic));
         var _loc9_:int = Math.min(this.ridut-1,int(param1.bottom/hajiwetic));
         var _loc10_:Rectangle = new Rectangle();
         var _loc11_:Matrix = new Matrix();
         var _loc12_:int = _loc6_;
         while(_loc12_<=_loc8_)
         {
            _loc13_=_loc7_;
            while(_loc13_<=_loc9_)
            {
               _loc14_=this.vewipuco[_loc12_+_loc13_*this.lywudiw];
               _loc11_.identity();
               _loc11_.translate(param3.x/_loc4_-param1.x+_loc12_*hajiwetic,param3.y/_loc5_-param1.y+_loc13_*hajiwetic);
               _loc11_.scale(_loc4_,_loc5_);
               param2.draw(_loc14_,_loc11_,null,null,param3,false);
               _loc13_++;
            }
            _loc12_++;
         }
         return;
      }

      public function pyqozarel(param1:Rectangle) : void {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc8_:* = 0;
         var _loc9_:BitmapData = null;
         var _loc2_:int = int(param1.x/hajiwetic);
         var _loc3_:int = int(param1.y/hajiwetic);
         var _loc4_:int = Math.ceil(param1.right/hajiwetic);
         var _loc5_:int = Math.ceil(param1.bottom/hajiwetic);
         var _loc6_:Rectangle = new Rectangle();
         var _loc7_:int = _loc2_;
         while(_loc7_<_loc4_)
         {
            _loc8_=_loc3_;
            while(_loc8_<_loc5_)
            {
               _loc9_=this.vewipuco[_loc7_+_loc8_*this.lywudiw];
               _loc6_.x=param1.x-_loc7_*hajiwetic;
               _loc6_.y=param1.y-_loc8_*hajiwetic;
               _loc6_.right=param1.right-_loc7_*hajiwetic;
               _loc6_.bottom=param1.bottom-_loc8_*hajiwetic;
               _loc9_.fillRect(_loc6_,this.hytewe);
               _loc8_++;
            }
            _loc7_++;
         }
         return;
      }

      public function micer() : Sprite {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:* = 0;
         var _loc4_:BitmapData = null;
         var _loc5_:Bitmap = null;
         var _loc1_:Sprite = new Sprite();
         var _loc2_:* = 0;
         while(_loc2_<this.lywudiw)
         {
            _loc3_=0;
            while(_loc3_<this.ridut)
            {
               _loc4_=this.vewipuco[_loc2_+_loc3_*this.lywudiw];
               _loc5_=new Bitmap(_loc4_);
               _loc5_.x=_loc2_*hajiwetic;
               _loc5_.y=_loc3_*hajiwetic;
               _loc1_.addChild(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
[/CLASS]
}