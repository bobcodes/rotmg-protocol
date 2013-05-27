package pujo
{
   import dulywywo.Command;
   import wegyluke.Hez;
   import zoroc.Jameloz;
   import fidymu.NewAbility;


   public class Bobo extends Command
   {
      public function Bobo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var naval:Hez;

      public var rolusu:Jameloz;

      public var zunipar:int;

      override public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:NewAbility = new NewAbility(this.rolusu.gutod(this.zunipar));
         this.naval.dispatch(_loc1_);
         return;
      }
   }

}