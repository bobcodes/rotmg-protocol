package furybyfib
{
   import tytojonib.Kyjefe;
   import fytalis.Tyhu;
   import lemugo.Kaqywi;
   import fanij.Namejaja;
   import com.company.assembleegameclient.objects.Gim;
   import com.company.assembleegameclient.objects.Pet;


   public class Wojysap extends Kyjefe
   {
      public function Wojysap() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Tyhu;

      public var fisokami:Kaqywi;

      public var cybeco:Namejaja;

      private var gytat:Gim;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.wybuwuj=this.hiwafo;
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super.destroy();
         return;
      }

      public function hiwafo() : Gim {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.byjedygi())
         {
            this.gytat=this.fisokami.gesoky;
         }
         return this.gytat;
      }

      private function byjedygi() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.fisokami.gesoky is Pet?this.hidasy():true;
      }

      private function hidasy() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.gytat&&(this.wasycekeh()))
         {
            return true;
         }
         if(this.gytat is Pet&&(this.wasycekeh())&&!(Pet(this.fisokami.gesoky).tutobasu.lepuve()==Pet(this.gytat).tutobasu.lepuve()))
         {
            return true;
         }
         return false;
      }

      private function wasycekeh() : Boolean {
         return this.cybeco.wasycekeh(this.view.gs_.map);
      }
   }

}