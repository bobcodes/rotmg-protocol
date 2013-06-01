package zitofoty
{
[CLASS378]   import tubovetyc.Command;
   import dylaqezo.Vusun;
   import com.company.assembleegameclient.appengine.Lelas;


   public class Letibucir extends Command
   {
      public function Letibucir() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var model:Vusun;

      public var data:XML;

      override public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.model.dicepa(new Lelas(this.data));
         this.model.toqo=false;
         return;
      }
   }
[/CLASS]
}