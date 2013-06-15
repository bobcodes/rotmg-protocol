package hivysif
{
   import flash.filters.GlowFilter;
   import flash.display.BitmapData;
   import jediwip.Tunyhazo;
   import flash.geom.Matrix;
   import flash.text.TextFieldAutoSize;
   import com.company.util.PointUtil;
   import komi.Donok;
   import komi.Qog;


   public class Pyzykyj extends Object
   {
      public function Pyzykyj(param1:Donok, param2:Qog) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.gusilyk=new Guzowoja();
         this.gusilyk.winyfa(param1.jawiqaheq());
         this.gusilyk.fewyv(param2.mawebywy());
         this.gusilyk.zivadova(param2.hyz());
         return;
      }

      private const rujemesi:GlowFilter = new GlowFilter(0,1,3,3,2,1);

      public var padding:int = 0;

      private var gusilyk:Guzowoja;

      public function make(param1:Tunyhazo, param2:int, param3:uint, param4:Boolean, param5:Matrix, param6:Boolean) : BitmapData {
         var _loc7_:* = true;
         var _loc8_:* = false;
         this.merubyp(param2,param3,param4,param1);
         return this.culonyqy(param6,param5);
      }

      private function merubyp(param1:int, param2:uint, param3:Boolean, param4:Tunyhazo) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.gusilyk.setSize(param1).setColor(param2).setBold(param3).setAutoSize(TextFieldAutoSize.LEFT);
         this.gusilyk.setStringBuilder(param4);
         return;
      }

      private function culonyqy(param1:Boolean, param2:Matrix) : BitmapData {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:int = this.gusilyk.width+this.padding+param2.tx;
         var _loc4_:int = this.gusilyk.height+this.padding;
         var _loc5_:BitmapData = new BitmapData(_loc3_,_loc4_,true,0);
         _loc5_.draw(this.gusilyk,param2);
         return _loc5_;
      }
   }

}