package joterar
{
   import hunavefeg.Vupyga;
   import dyca.Mes;
   import vyso.Sehorof;
   import ranu.Lynuz;
   import qowema.Sytyze;
   import cizagamym.Wudarozy;
   import cizagamym.Boquzojul;
   import cizagamym.Dynydo;
   import cizagamym.Lebovas;
   import cizagamym.Pafe;
   import cizagamym.Zadokop;
   import hopi.Cilafybiz;
   import hopi.Rokygyqu;


   public class Zypokikim extends Object implements Vupyga
   {
      public function Zypokikim() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var difas:Mes;

      public var mediatorMap:Sehorof;

      public var register:Lynuz;

      public function configure() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Sytyze = null;
         this.difas.map(Wudarozy).fezy();
         this.difas.map(Boquzojul).fezy();
         this.difas.map(Dynydo).fezy();
         this.difas.map(Lebovas).fezy();
         this.difas.map(Pafe).fezy();
         this.difas.map(Zadokop).fezy();
         this.mediatorMap.map(Cilafybiz).lokiduf(Rokygyqu);
         _loc1_=new Sytyze();
         _loc1_.name="closeDialogs";
         _loc1_.description="closes all open dialogs";
         this.register.dispatch(_loc1_,this.difas.getInstance(Lebovas));
         return;
      }
   }

}