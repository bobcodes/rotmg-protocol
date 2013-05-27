package cicaqyp
{
   import hotewa.Baqifa;
   import com.company.assembleegameclient.appengine.SavedCharacter;


   public class Zuco extends Object implements Qejopahy
   {
      public function Zuco() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var sygenap:Baqifa;

      private var selected:SavedCharacter;

      public function zimatuhur() : int {
         return this.sygenap.zimatuhur();
      }

      public function sytabe(param1:int) : SavedCharacter {
         return this.sygenap.joqy(param1);
      }

      public function deleteCharacter(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.sygenap.deleteCharacter(param1);
         if(this.selected.charId()==param1)
         {
            this.selected=null;
         }
         return;
      }

      public function select(param1:SavedCharacter) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.selected=param1;
         return;
      }

      public function zega() : SavedCharacter {
         return this.selected;
      }
   }

}