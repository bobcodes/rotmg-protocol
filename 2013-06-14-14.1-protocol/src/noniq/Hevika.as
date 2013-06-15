package noniq
{
   import __AS3__.vec.Vector;
   import flash.display.Shape;
   import mavew.Qyryl;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Qawosiwi;
   import flash.geom.Rectangle;
   import com.company.assembleegameclient.map.Qemujy;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.map.Bumuv;
   import com.company.assembleegameclient.map.Ryfiseqe;


   class Hevika extends Bumizerun
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      function Hevika(param1:XML) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         super(int(param1.@type));
         this.dufofilem=param1;
         var _loc2_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>();
         var _loc3_:Qawosiwi = new Qawosiwi();
         _loc3_.configure(0.5,0.5,12,Math.PI/4,new Rectangle(-100,-100,200,200),false);
         var _loc4_:BitmapData = Qemujy.getBitmapData(type_);
         var _loc5_:Bumuv = new Bumuv(_loc4_,gozipiw,0,0,Ryfiseqe.bocijaha,0,0);
         _loc5_.draw(_loc2_,_loc3_,0);
         this.zigysotic=new Shape();
         this.zigysotic.graphics.drawGraphicsData(_loc2_);
         this.zigysotic.scaleX=this.zigysotic.scaleY=zocodyso;
         this.zigysotic.x=WIDTH/2;
         this.zigysotic.y=HEIGHT/2;
         addChild(this.zigysotic);
         return;
      }

      private static const gozipiw:Vector.<Number> = new Vector.<Number>(12);

      private static const zocodyso:Number = 0.6;

      public var dufofilem:XML;

      private var zigysotic:Shape;

      override protected function getToolTip() : Qyryl {
         return new Matujemim(this.dufofilem);
      }
   }

}