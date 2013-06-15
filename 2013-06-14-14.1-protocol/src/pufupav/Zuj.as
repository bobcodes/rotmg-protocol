package pufupav
{
   import ruzynyj.Belybaz;
   import com.company.assembleegameclient.objects.GameObject;
   import __AS3__.vec.Vector;
   import flash.display.BitmapData;
   import aaa.RotmgParameters.RotmgParameters;
   import flash.geom.Point;


   public class Zuj extends Belybaz
   {
      public function Zuj(param1:uint, param2:int, param3:uint, param4:Point, param5:Point, param6:Number, param7:GameObject, param8:Vector.<BitmapData>) {
         var _loc9_:* = false;
         var _loc10_:* = true;
         this.cameraAngle=RotmgParameters.data_.cameraAngle;
         this.go=param7;
         this.hucosab=param6;
         this.mum=param8;
         super(param8[0],0);
         this.qeny=param8.length;
         this.hyf=param2;
         this.dx_=(param5.x-param4.x)/this.hyf;
         this.dy_=(param5.y-param4.y)/this.hyf;
         this.wanaqovy=param4.x-param7.x_;
         this.retyliteq=param4.y-param7.y_;
         fity=-param6-this.cameraAngle;
         return;
      }

      private var hyf:int;

      private var dx_:Number;

      private var dy_:Number;

      private var wanaqovy:Number;

      private var retyliteq:Number;

      private var hucosab:Number;

      private var telal:uint = 0;

      private var vysina:uint = 0;

      private var qeny:uint;

      private var go:GameObject;

      private var byk:Number = 0;

      private var rojobeki:Number = 0;

      private var cameraAngle:Number;

      private var mum:Vector.<BitmapData>;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.hyf--;
         if(this.hyf<=0)
         {
            return false;
         }
         this.telal++;
         if(this.telal%2)
         {
            this.vysina++;
         }
         toro=this.mum[this.vysina%this.qeny];
         this.byk=this.byk+this.dx_;
         this.rojobeki=this.rojobeki+this.dy_;
         if(RotmgParameters.data_.cameraAngle!=this.cameraAngle)
         {
            this.cameraAngle=RotmgParameters.data_.cameraAngle;
            fity=-this.hucosab-this.cameraAngle;
         }
         moveTo(this.go.x_+this.wanaqovy+this.byk,this.go.y_+this.retyliteq+this.rojobeki);
         return true;
      }
   }

}