package pufupav
{
   import com.company.assembleegameclient.objects.GameObject;
   import __AS3__.vec.Vector;
   import flash.display.BitmapData;
   import com.company.util.AssetLibrary;
   import com.company.assembleegameclient.util.TextureRedrawer;


   public class Bibynohi extends Miwimemo
   {
      public function Bibynohi(param1:Tajy, param2:GameObject) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.mek=param2;
         this.ran=new Vector.<Rujomicim>();
         this.lomehyti=new Vector.<Rujomicim>();
         this.lalebyzo=param1;
         if(this.lalebyzo.bitmapFile)
         {
            this.bitmapData=AssetLibrary.tem(this.lalebyzo.bitmapFile,this.lalebyzo.bitmapIndex);
            this.bitmapData=TextureRedrawer.redraw(this.bitmapData,this.lalebyzo.size,true,0,0);
         }
         else
         {
            this.bitmapData=TextureRedrawer.redrawSolidSquare(this.lalebyzo.color,this.lalebyzo.size);
         }
         return;
      }

      public static function zihyhi(param1:Tajy, param2:GameObject) : Bibynohi {
         return new Bibynohi(param1,param2);
      }

      private var ran:Vector.<Rujomicim>;

      private var lomehyti:Vector.<Rujomicim>;

      private var mek:GameObject;

      private var wanihuqic:Number = 0;

      private var havidiju:Number = 0;

      private var lalebyzo:Tajy;

      private var bitmapData:BitmapData;

      private var gigisace:Number;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var _loc4_:* = NaN;
         var _loc9_:Rujomicim = null;
         var _loc10_:Rujomicim = null;
         var _loc3_:Number = param1/1000;
         _loc4_=param2/1000;
         if(this.mek.map_==null)
         {
            return false;
         }
         x_=this.mek.x_;
         y_=this.mek.y_;
         z_=this.mek.z_+this.lalebyzo.zOffset;
         this.havidiju=this.havidiju+_loc4_;
         var _loc5_:Number = this.lalebyzo.rate*this.havidiju;
         var _loc6_:int = _loc5_-this.wanihuqic;
         var _loc7_:* = 0;
         while(_loc7_<_loc6_)
         {
            if(this.ran.length)
            {
               _loc9_=this.ran.pop();
            }
            else
            {
               _loc9_=new Rujomicim(this.bitmapData);
            }
            _loc9_.initialize(this.lalebyzo.life+this.lalebyzo.lifeVariance*(2*Math.random()-1),this.lalebyzo.speed+this.lalebyzo.speedVariance*(2*Math.random()-1),this.lalebyzo.speed+this.lalebyzo.speedVariance*(2*Math.random()-1),this.lalebyzo.rise+this.lalebyzo.riseVariance*(2*Math.random()-1),z_);
            map_.addObj(_loc9_,x_+this.lalebyzo.rangeX*(2*Math.random()-1),y_+this.lalebyzo.rangeY*(2*Math.random()-1));
            this.lomehyti.push(_loc9_);
            _loc7_++;
         }
         this.wanihuqic=this.wanihuqic+_loc6_;
         var _loc8_:* = 0;
         while(_loc8_<this.lomehyti.length)
         {
            _loc10_=this.lomehyti[_loc8_];
            _loc10_.votuqunyp=_loc10_.votuqunyp-_loc4_;
            if(_loc10_.votuqunyp<=0)
            {
               this.lomehyti.splice(_loc8_,1);
               map_.removeObj(_loc10_.objectId_);
               _loc8_--;
               this.ran.push(_loc10_);
            }
            else
            {
               _loc10_.tor=_loc10_.tor+this.lalebyzo.riseAcc*_loc4_;
               _loc10_.x_=_loc10_.x_+_loc10_.tybep*_loc4_;
               _loc10_.y_=_loc10_.y_+_loc10_.cisavu*_loc4_;
               _loc10_.z_=_loc10_.z_+_loc10_.tor*_loc4_;
            }
            _loc8_++;
         }
         return true;
      }

      override public function removeFromMap() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Rujomicim = null;
         for each (_loc1_ in this.lomehyti)
         {
            map_.removeObj(_loc1_.objectId_);
         }
         this.lomehyti=null;
         this.ran=null;
         super.removeFromMap();
         return;
      }
   }

}