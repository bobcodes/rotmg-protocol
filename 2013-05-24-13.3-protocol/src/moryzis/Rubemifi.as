package moryzis
{
   import fubuwa.Tyd;
   import com.company.assembleegameclient.objects.GameObject;
   import __AS3__.vec.Vector;
   import flash.display.BitmapData;
   import aaa.rotmg.config.UserConfig;
   import flash.geom.Point;


   public class Rubemifi extends Tyd
   {
      public function Rubemifi(param1:uint, param2:int, param3:uint, param4:Point, param5:Point, param6:Number, param7:GameObject, param8:Vector.<BitmapData>) {
         var _loc9_:* = true;
         var _loc10_:* = false;
         this.cameraAngle=UserConfig.data_.cameraAngle;
         this.go=param7;
         this.gacymaji=param6;
         this.pit=param8;
         super(param8[0],0);
         this.mohucyz=param8.length;
         this.fijitab=param2;
         this.dx_=(param5.x-param4.x)/this.fijitab;
         this.dy_=(param5.y-param4.y)/this.fijitab;
         this.tyvo=param4.x-param7.x_;
         this.jadil=param4.y-param7.y_;
         qadequ=-param6-this.cameraAngle;
         return;
      }

      private var fijitab:int;

      private var dx_:Number;

      private var dy_:Number;

      private var tyvo:Number;

      private var jadil:Number;

      private var gacymaji:Number;

      private var nuliwok:uint = 0;

      private var hojebysu:uint = 0;

      private var mohucyz:uint;

      private var go:GameObject;

      private var nap:Number = 0;

      private var kobe:Number = 0;

      private var cameraAngle:Number;

      private var pit:Vector.<BitmapData>;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.fijitab--;
         if(this.fijitab<=0)
         {
            return false;
         }
         this.nuliwok++;
         if(this.nuliwok%2)
         {
            this.hojebysu++;
         }
         vyho=this.pit[this.hojebysu%this.mohucyz];
         this.nap=this.nap+this.dx_;
         this.kobe=this.kobe+this.dy_;
         if(UserConfig.data_.cameraAngle!=this.cameraAngle)
         {
            this.cameraAngle=UserConfig.data_.cameraAngle;
            qadequ=-this.gacymaji-this.cameraAngle;
         }
         moveTo(this.go.x_+this.tyvo+this.nap,this.go.y_+this.jadil+this.kobe);
         return true;
      }
   }

}