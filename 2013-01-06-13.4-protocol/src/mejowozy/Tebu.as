package mejowozy
{
[CLASS1702]   import wade.Cevic;
   import com.company.assembleegameclient.objects.GameObject;
   import __AS3__.vec.Vector;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.parameters.Parameters;
   import flash.geom.Point;


   public class Tebu extends Cevic
   {
      public function Tebu(param1:uint, param2:int, param3:uint, param4:Point, param5:Point, param6:Number, param7:GameObject, param8:Vector.<BitmapData>) {
         var _loc9_:* = false;
         var _loc10_:* = true;
         this.cameraAngle=Parameters.data_.cameraAngle;
         this.go=param7;
         this.qawuh=param6;
         this.sobygawo=param8;
         super(param8[0],0);
         this.mige=param8.length;
         this.mahanom=param2;
         this.dx_=(param5.x-param4.x)/this.mahanom;
         this.dy_=(param5.y-param4.y)/this.mahanom;
         this.qicytem=param4.x-param7.x_;
         this.waryruw=param4.y-param7.y_;
         piqu=-param6-this.cameraAngle;
         return;
      }

      private var mahanom:int;

      private var dx_:Number;

      private var dy_:Number;

      private var qicytem:Number;

      private var waryruw:Number;

      private var qawuh:Number;

      private var leduvu:uint = 0;

      private var kuw:uint = 0;

      private var mige:uint;

      private var go:GameObject;

      private var riwiqiwesu:Number = 0;

      private var kowuhan:Number = 0;

      private var cameraAngle:Number;

      private var sobygawo:Vector.<BitmapData>;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.mahanom--;
         if(this.mahanom<=0)
         {
            return false;
         }
         this.leduvu++;
         if(this.leduvu%2)
         {
            this.kuw++;
         }
         mujuwizig=this.sobygawo[this.kuw%this.mige];
         this.riwiqiwesu=this.riwiqiwesu+this.dx_;
         this.kowuhan=this.kowuhan+this.dy_;
         if(Parameters.data_.cameraAngle!=this.cameraAngle)
         {
            this.cameraAngle=Parameters.data_.cameraAngle;
            piqu=-this.qawuh-this.cameraAngle;
         }
         moveTo(this.go.x_+this.qicytem+this.riwiqiwesu,this.go.y_+this.waryruw+this.kowuhan);
         return true;
      }
   }
[/CLASS]
}