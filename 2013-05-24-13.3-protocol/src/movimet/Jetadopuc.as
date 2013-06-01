package movimet
{
   import flash.filters.GlowFilter;
   import flash.display.BitmapData;
   import nec.Zirewe;
   import flash.geom.Matrix;
   import flash.text.TextFieldAutoSize;
   import com.company.util.PointUtil;
   import heko.Kup;
   import heko.Vagabe;


   public class Jetadopuc extends Object
   {
      public function Jetadopuc(param1:Kup, param2:Vagabe) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.lan=new Lufub();
         this.lan.cup(param1.gibivi());
         this.lan.hitame(param2.cetovuzy());
         this.lan.menyhaky(param2.nezori());
         return;
      }

      private const suwibetaz:GlowFilter = new GlowFilter(0,1,3,3,2,1);

      public var padding:int = 0;

      private var lan:Lufub;

      public function make(param1:Zirewe, param2:int, param3:uint, param4:Boolean, param5:Matrix, param6:Boolean) : BitmapData {
         var _loc7_:* = false;
         var _loc8_:* = true;
         this.rofel(param2,param3,param4,param1);
         return this.jyh(param6,param5);
      }

      private function rofel(param1:int, param2:uint, param3:Boolean, param4:Zirewe) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.lan.setSize(param1).setColor(param2).setBold(param3).setAutoSize(TextFieldAutoSize.LEFT);
         this.lan.setStringBuilder(param4);
         return;
      }

      private function jyh(param1:Boolean, param2:Matrix) : BitmapData {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:int = this.lan.width+this.padding+param2.tx;
         var _loc4_:int = this.lan.height+this.padding;
         var _loc5_:BitmapData = new BitmapData(_loc3_,_loc4_,true,0);
         _loc5_.draw(this.lan,param2);
         return _loc5_;
      }
   }

}