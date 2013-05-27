package nafa
{
   import __AS3__.vec.Vector;
   import flash.display.Shape;
   import povopito.Ryduwi;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Wypyj;
   import flash.geom.Rectangle;
   import com.company.assembleegameclient.map.Qezab;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.map.Lypapym;
   import com.company.assembleegameclient.map.Lepuro;


   class Dozobicu extends Fyduc
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      function Dozobicu(param1:XML) {
         var _loc7_:* = false;
         var _loc8_:* = true;
         super(int(param1.@type));
         this.tos=param1;
         var _loc2_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>();
         var _loc3_:Wypyj = new Wypyj();
         _loc3_.configure(0.5,0.5,12,Math.PI/4,new Rectangle(-100,-100,200,200),false);
         var _loc4_:BitmapData = Qezab.getBitmapData(type_);
         var _loc5_:Lypapym = new Lypapym(_loc4_,gecyj,0,0,Lepuro.bad,0,0);
         _loc5_.draw(_loc2_,_loc3_,0);
         this.rumytu=new Shape();
         this.rumytu.graphics.drawGraphicsData(_loc2_);
         this.rumytu.scaleX=this.rumytu.scaleY=pesas;
         this.rumytu.x=WIDTH/2;
         this.rumytu.y=HEIGHT/2;
         addChild(this.rumytu);
         return;
      }

      private static const gecyj:Vector.<Number> = new Vector.<Number>(12);

      private static const pesas:Number = 0.6;

      public var tos:XML;

      private var rumytu:Shape;

      override protected function getToolTip() : Ryduwi {
         return new Wacizohy(this.tos);
      }
   }

}