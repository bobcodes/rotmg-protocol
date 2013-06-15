package jeroheta
{
   import taz.Command;
   import com.company.assembleegameclient.game.GameSprite;
   import micac.Ciqyl;
   import pusy.Riquzesi;


   public class Hacy extends Command
   {
      public function Hacy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var qyhowo:GameSprite;

      public var model:Ciqyl;

      public var vizuke:Riquzesi;

      override public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.model.qyhowo=this.qyhowo;
         this.vizuke.dispatch();
         return;
      }
   }

}