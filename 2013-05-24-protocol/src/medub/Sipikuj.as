package medub
{
   import dulywywo.Command;
   import com.company.assembleegameclient.game.GameSprite;
   import fom.Hepeg;
   import sasacen.Zycol;


   public class Sipikuj extends Command
   {
      public function Sipikuj() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var qizys:GameSprite;

      public var model:Hepeg;

      public var bel:Zycol;

      override public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.model.qizys=this.qizys;
         this.bel.dispatch();
         return;
      }
   }

}