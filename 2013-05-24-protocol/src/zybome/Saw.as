package zybome
{
   import dulywywo.Command;
   import hotewa.Baqifa;
   import com.company.assembleegameclient.appengine.Kewisesa;


   public class Saw extends Command
   {
      public function Saw() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var model:Baqifa;

      public var data:XML;

      override public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.model.hovufojes(new Kewisesa(this.data));
         this.model.napabapuq=false;
         return;
      }
   }

}