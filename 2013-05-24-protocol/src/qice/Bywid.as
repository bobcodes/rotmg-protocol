package qice
{
   import qov.Command;
   import com.company.assembleegameclient.game.Tuqupopu;


   public class Bywid extends Command
   {
      public function Bywid() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var model:Tuqupopu;

      public var wehapik:Boolean;

      override public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.model.tah(this.wehapik);
         return;
      }
   }

}