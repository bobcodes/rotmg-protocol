package keseq
{
[CLASS24]   import bikyvym.Tihoc;
   import pogefeqeh.Wahovy;
   import wufyba.Cobyjowek;
   import nupuq.Kus;
   import zaw.Lynu;
   import kirofyny.Mary;
   import kirofyny.Hehuf;
   import kirofyny.Zaqylisot;
   import kirofyny.Tiqimav;
   import kirofyny.Giry;
   import kirofyny.Ladej;
   import dacuje.Vamusu;
   import dacuje.Kifa;


   public class Tuvenun extends Object implements Tihoc
   {
      public function Tuvenun() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var viqelo:Wahovy;

      public var mediatorMap:Cobyjowek;

      public var register:Kus;

      public function configure() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Lynu = null;
         this.viqelo.map(Mary).fajuna();
         this.viqelo.map(Hehuf).fajuna();
         this.viqelo.map(Zaqylisot).fajuna();
         this.viqelo.map(Tiqimav).fajuna();
         this.viqelo.map(Giry).fajuna();
         this.viqelo.map(Ladej).fajuna();
         this.mediatorMap.map(Vamusu).sab(Kifa);
         _loc1_=new Lynu();
         _loc1_.name="closeDialogs";
         _loc1_.description="closes all open dialogs";
         this.register.dispatch(_loc1_,this.viqelo.getInstance(Tiqimav));
         return;
      }
   }
[/CLASS]
}