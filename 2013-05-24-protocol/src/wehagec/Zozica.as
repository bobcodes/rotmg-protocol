package wehagec
{
   import komawowag.Silikyta;
   import kyco.Nun;
   import flash.display.DisplayObjectContainer;
   import voto.Cala;
   import flash.display.LoaderInfo;
   import likikul.Fop;
   import cucowury.Vylasy;
   import cucowury.Fym;
   import likikul.Wubeh;
   import voto.Nemo;
   import bigesufy.Quzu;
   import bigesufy.Vuca;
   import bigesufy.Vajukyz;
   import bigesufy.Rodygyv;
   import bigesufy.Dini;


   public class Zozica extends Object implements Silikyta
   {
      public function Zozica() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var cemohoqal:Nun;

      public var root:DisplayObjectContainer;

      public var data:Cala;

      public var loaderInfo:LoaderInfo;

      public var zotoruzil:Fop;

      public function configure() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Vylasy = this.moga();
         this.cemohoqal.map(Fym).cufypy(_loc1_);
         this.cemohoqal.map(Vylasy).cufypy(_loc1_);
         this.cemohoqal.map(Wubeh).pybe();
         return;
      }

      private function moga() : Vylasy {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Nemo = this.data.jeluf();
         switch(_loc1_)
         {
            case Nemo.cag:
               return new Quzu();
            case Nemo.codyjyj:
               return this.dum();
            case Nemo.luhosusa:
               return new Vuca();
            case Nemo.duke:
               return new Vajukyz();
            default:
               return new Rodygyv();
         }
      }

      private function dum() : Dini {
         return new Dini().setAddress(this.data.higodoqo());
      }
   }

}