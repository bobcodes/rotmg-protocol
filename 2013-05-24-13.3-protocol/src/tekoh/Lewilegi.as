package tekoh
{
   import komawowag.Silikyta;
   import komawowag.Net;
   import bidav.Duwuweb;
   import loruhowek.Lis;
   import loruhowek.Hijavor;


   public class Lewilegi extends Object implements Silikyta
   {
      public function Lewilegi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var context:Net;

      public var mediatorMap:Duwuweb;

      public function configure() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.mediatorMap.map(Lis).zusu(Hijavor);
         return;
      }
   }

}