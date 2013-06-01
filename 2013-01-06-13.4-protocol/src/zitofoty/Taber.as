package zitofoty
{
[CLASS366]   import tysenyzy.Command;
   import tuzopite.Fajo;


   public class Taber extends Command
   {
      public function Taber() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var data:XML;

      public var cynyduci:Fajo;

      override public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cynyduci.nyky(this.data.FilterList.split(new RegExp("\\n","g")));
         return;
      }
   }
[/CLASS]
}