package sozyzajaw
{
   import tytojonib.Command;
   import com.company.assembleegameclient.game.Hunej;


   public class Jopo extends Command
   {
      public function Jopo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var model:Hunej;

      public var tiroqaji:Boolean;

      override public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.model.zowijecys(this.tiroqaji);
         return;
      }
   }

}