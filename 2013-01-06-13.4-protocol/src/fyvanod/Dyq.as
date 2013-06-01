package fyvanod
{
[CLASS314]   import tysenyzy.Zovisis;
   import qypupet.Tuhyfutos;
   import qypupet.Sikyvuvus;
   import qypupet.Fytoritum;


   public class Dyq extends Zovisis
   {
      public function Dyq() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:FusionStrength;

      public var lycufasoc:Tuhyfutos;

      public var qidogy:Sikyvuvus;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.qidogy.jaq)
         {
            this.qidogy.jaq=this.lycufasoc.kodu();
         }
         if(this.qidogy.kizu())
         {
            this.view.cema(Fytoritum.lahywara(this.qidogy.jaq,this.qidogy.gujudunyt));
         }
         else
         {
            this.view.reset();
         }
         return;
      }
   }
[/CLASS]
}