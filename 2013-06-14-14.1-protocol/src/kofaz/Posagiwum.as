package kofaz
{
   import tytojonib.Kyjefe;
   import wahyqise.Virusad;


   public class Posagiwum extends Kyjefe
   {
      public function Posagiwum() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:TextPanel;

      public var data:Virusad;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.init(this.data.message);
         return;
      }
   }

}