package dovuz
{
   import zugevygam.Hovogejyt;
   import zugevygam.Byty;
   import __AS3__.vec.Vector;
   import dyca.Mes;
   import zugevygam.Tuda;


   public class Vivajyp extends Object implements Hovogejyt, Byty
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Vivajyp() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const raqyp:int = 256;

      private const fuwodyk:Vector.<MessageCenterMapping> = new Vector.<MessageCenterMapping>(raqyp,true);

      private const lonany:Vector.<Nuty> = new Vector.<Nuty>(raqyp,true);

      private var difas:Mes;

      public function setInjector(param1:Mes) : Vivajyp {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.difas=param1;
         return this;
      }

      public function map(param1:int) : Tuda {
         return this.fuwodyk[param1]=(this.fuwodyk[param1])||(this.qigor(param1));
      }

      public function ricelira(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.lonany[param1]=null;
         this.fuwodyk[param1]=null;
         return;
      }

      private function qigor(param1:int) : MessageCenterMapping {
         return new MessageCenterMapping().setInjector(this.difas).setID(param1) as MessageCenterMapping;
      }

      public function quseb(param1:int) : Qamyro {
         var _loc2_:Nuty = this.lonany[param1]=(this.lonany[param1])||(this.fileh(param1));
         return _loc2_.quseb();
      }

      private function fileh(param1:uint) : Nuty {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:MessageCenterMapping = this.fuwodyk[param1];
         return _loc2_?_loc2_.fileh():null;
      }
   }

}