package tubovetyc
{
[CLASS1634]   import __AS3__.vec.Vector;


   public class Sugamucol extends Object
   {
      public function Sugamucol() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hovalu=new Vector.<Command>();
         super();
         return;
      }

      private var hovalu:Vector.<Command>;

      public function sihovujen() : Boolean {
         return this.hovalu.length==0;
      }

      public function gaqisam(param1:Command) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.hovalu.push(param1);
         return;
      }

      public function execute() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Command = null;
         for each (_loc1_ in this.hovalu)
         {
            _loc1_.execute();
         }
         return;
      }

      public function unexecute() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Command = null;
         for each (_loc1_ in this.hovalu)
         {
            _loc1_.unexecute();
         }
         return;
      }
   }
[/CLASS]
}