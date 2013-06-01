package dec
{
[CLASS1826]   import __AS3__.vec.Vector;
   import flash.display.Shape;
   import pigeguwo.Jazyv;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Fot;
   import flash.geom.Rectangle;
   import com.company.assembleegameclient.map.Lakum;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.map.Bujubakuh;
   import com.company.assembleegameclient.map.Redoroqo;


   class Fequjaq extends Cozicebyk
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      function Fequjaq(param1:XML) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         super(int(param1.@type));
         this.mym=param1;
         var _loc2_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>();
         var _loc3_:Fot = new Fot();
         _loc3_.configure(0.5,0.5,12,Math.PI/4,new Rectangle(-100,-100,200,200),false);
         var _loc4_:BitmapData = Lakum.getBitmapData(type_);
         var _loc5_:Bujubakuh = new Bujubakuh(_loc4_,hun,0,0,Redoroqo.saluf,0,0);
         _loc5_.draw(_loc2_,_loc3_,0);
         this.wuc=new Shape();
         this.wuc.graphics.drawGraphicsData(_loc2_);
         this.wuc.scaleX=this.wuc.scaleY=befykelu;
         this.wuc.x=WIDTH/2;
         this.wuc.y=HEIGHT/2;
         addChild(this.wuc);
         return;
      }

      private static const hun:Vector.<Number> = new Vector.<Number>(12);

      private static const befykelu:Number = 0.6;

      public var mym:XML;

      private var wuc:Shape;

      override protected function getToolTip() : Jazyv {
         return new Litu(this.mym);
      }
   }
[/CLASS]
}