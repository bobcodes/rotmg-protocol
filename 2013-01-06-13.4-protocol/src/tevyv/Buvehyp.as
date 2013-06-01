package tevyv
{
[CLASS591]   import dylaqezo.Vusun;
   import com.company.assembleegameclient.appengine.SavedCharacter;


   public class Buvehyp extends Object implements Taw
   {
      public function Buvehyp() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var bulu:Vusun;

      private var selected:SavedCharacter;

      public function wuj() : int {
         return this.bulu.wuj();
      }

      public function tiluq(param1:int) : SavedCharacter {
         return this.bulu.roh(param1);
      }

      public function deleteCharacter(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.bulu.deleteCharacter(param1);
         if(this.selected.charId()==param1)
         {
            this.selected=null;
         }
         return;
      }

      public function select(param1:SavedCharacter) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.selected=param1;
         return;
      }

      public function docew() : SavedCharacter {
         return this.selected;
      }
   }
[/CLASS]
}