package dibale
{
[CLASS32]   import bikyvym.Tihoc;
   import pogefeqeh.Wahovy;
   import lafol.Jaqelegu;
   import flash.net.Socket;
   import zun.Vij;
   import zun.Fyqyna;
   import lafol.Vidales;


   public class Gajyqu extends Object implements Tihoc
   {
      public function Gajyqu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var viqelo:Wahovy;

      private var ryj:Jaqelegu;

      public function configure() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.ryj=new Jaqelegu().setInjector(this.viqelo);
         this.viqelo.map(Socket);
         this.viqelo.map(Vij).zoru(this.ryj);
         this.viqelo.map(Fyqyna).zoru(this.ryj);
         this.viqelo.map(Vidales).fajuna();
         return;
      }
   }
[/CLASS]
}