package tumi
{
   import tytojonib.Command;
   import pumoc.Juc;
   import komi.Qog;
   import pumoc.Zesihag;
   import jediwip.Kybidu;
   import com.company.assembleegameclient.parameters.Parameters;


   public class Tyno extends Command
   {
      public function Tyno() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var qiwu:Juc;

      public var soj:Qog;

      public var buhuhoj:Resan;

      public var model:Zesihag;

      override public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.sufupydata();
         this.mogen();
         this.model.zolupi(this.qiwu);
         this.buhuhoj.dispatch(this.qiwu);
         return;
      }

      private function mogen() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Kybidu = null;
         var _loc2_:String = null;
         if(this.qiwu.name.length>0&&this.qiwu.name.charAt(0)=="#")
         {
            _loc1_=new Kybidu().setParams(this.qiwu.name.substr(1,this.qiwu.name.length-1),this.qiwu.tokens);
            _loc1_.zivadova(this.soj.hyz());
            _loc2_=_loc1_.getString();
            this.qiwu.name=_loc2_?"#"+_loc2_:this.qiwu.name;
         }
         return;
      }

      private function sufupydata() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.qiwu.name==Parameters.wyfa||this.qiwu.name==Parameters.lugiboso||this.qiwu.name==Parameters.kokapo||this.qiwu.name==Parameters.quc||this.qiwu.name.charAt(0)=="#")
         {
            this.balosu();
         }
         return;
      }

      public function balosu() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Kybidu = new Kybidu().setParams(this.qiwu.text,this.qiwu.tokens);
         _loc1_.zivadova(this.soj.hyz());
         var _loc2_:String = _loc1_.getString();
         this.qiwu.text=_loc2_?_loc2_:this.qiwu.text;
         return;
      }
   }

}