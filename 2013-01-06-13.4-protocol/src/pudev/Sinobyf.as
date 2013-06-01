package pudev
{
[CLASS329]   import flash.filters.GlowFilter;
   import flash.display.BitmapData;
   import totuhare.Qebar;
   import flash.geom.Matrix;
   import flash.text.TextFieldAutoSize;
   import com.company.util.PointUtil;
   import haqakel.Cuku;
   import haqakel.Mykob;


   public class Sinobyf extends Object
   {
      public function Sinobyf(param1:Cuku, param2:Mykob) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.pizibi=new Capitu();
         this.pizibi.qanu(param1.detahaf());
         this.pizibi.wyza(param2.jotuvug());
         this.pizibi.suhuvy(param2.qobijav());
         return;
      }

      private const qepi:GlowFilter = new GlowFilter(0,1,3,3,2,1);

      public var padding:int = 0;

      private var pizibi:Capitu;

      public function make(param1:Qebar, param2:int, param3:uint, param4:Boolean, param5:Matrix, param6:Boolean) : BitmapData {
         var _loc7_:* = true;
         var _loc8_:* = false;
         this.dorelypoj(param2,param3,param4,param1);
         return this.vololat(param6,param5);
      }

      private function dorelypoj(param1:int, param2:uint, param3:Boolean, param4:Qebar) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.pizibi.setSize(param1).setColor(param2).setBold(param3).setAutoSize(TextFieldAutoSize.LEFT);
         this.pizibi.setStringBuilder(param4);
         return;
      }

      private function vololat(param1:Boolean, param2:Matrix) : BitmapData {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:int = this.pizibi.width+this.padding+param2.tx;
         var _loc4_:int = this.pizibi.height+this.padding;
         var _loc5_:BitmapData = new BitmapData(_loc3_,_loc4_,true,0);
         _loc5_.draw(this.pizibi,param2);
         return _loc5_;
      }
   }
[/CLASS]
}