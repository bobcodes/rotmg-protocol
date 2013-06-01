package huzy
{
   import wegyluke.Hez;
   import naj.KabamAccountDetailDialog;


   public class Qogudu extends Object
   {
      public function Qogudu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var naval:Hez;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.naval.dispatch(new KabamAccountDetailDialog());
         return;
      }
   }

}