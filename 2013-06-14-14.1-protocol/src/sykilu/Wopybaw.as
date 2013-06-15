package sykilu
{
   import hunavefeg.Vupyga;
   import dyca.Mes;
   import flash.display.DisplayObjectContainer;
   import zevyd.Kujyketyh;
   import flash.display.LoaderInfo;
   import rulobefuq.Vefume;
   import daqun.Qobeta;
   import daqun.Lin;
   import rulobefuq.Hahukora;
   import zevyd.Wufoduj;
   import fuwured.Huhycy;
   import fuwured.Duc;
   import fuwured.Bulok;
   import fuwured.Moryvi;
   import fuwured.Rocynav;


   public class Wopybaw extends Object implements Vupyga
   {
      public function Wopybaw() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var difas:Mes;

      public var root:DisplayObjectContainer;

      public var data:Kujyketyh;

      public var loaderInfo:LoaderInfo;

      public var jupyde:Vefume;

      public function configure() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Qobeta = this.pofy();
         this.difas.map(Lin).pylo(_loc1_);
         this.difas.map(Qobeta).pylo(_loc1_);
         this.difas.map(Hahukora).fezy();
         return;
      }

      private function pofy() : Qobeta {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Wufoduj = this.data.jozeguk();
         switch(null)
         {
            case Wufoduj.bac:
               return new Huhycy();
            case Wufoduj.wowysery:
               return this.romykaw();
            case Wufoduj.kapez:
               return new Duc();
            case Wufoduj.nobuta:
               return new Bulok();
            default:
               return new Moryvi();
         }
      }

      private function romykaw() : Rocynav {
         return new Rocynav().setAddress(this.data.hacohylat());
      }
   }

}