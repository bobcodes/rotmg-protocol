package biqacufo
{
   import qov.Kalefu;
   import cuwyg.Ficur;


   public class Tekefazob extends Kalefu
   {
      public function Tekefazob() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:TextPanel;

      public var data:Ficur;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.init(this.data.message);
         return;
      }
   }

}