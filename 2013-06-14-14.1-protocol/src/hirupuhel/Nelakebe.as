package hirupuhel
{
   import lemugo.Wokycuku;
   import com.company.assembleegameclient.appengine.SavedCharacter;


   public class Nelakebe extends Object implements Wygoqu
   {
      public function Nelakebe() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var rilige:Wokycuku;

      private var selected:SavedCharacter;

      public function dopinowys() : int {
         return this.rilige.dopinowys();
      }

      public function kupose(param1:int) : SavedCharacter {
         return this.rilige.zana(param1);
      }

      public function deleteCharacter(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.rilige.deleteCharacter(param1);
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

      public function gype() : SavedCharacter {
         return this.selected;
      }
   }

}