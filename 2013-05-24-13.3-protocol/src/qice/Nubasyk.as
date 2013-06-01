package qice
{
   import qov.Command;
   import cuwyg.Ficur;


   public class Nubasyk extends Command
   {
      public function Nubasyk() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var model:Ficur;

      public var message:String;

      override public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.model.message=this.message;
         return;
      }
   }

}