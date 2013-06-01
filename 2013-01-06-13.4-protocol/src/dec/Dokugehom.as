package dec
{
[CLASS1887]   import pigeguwo.Jazyv;
   import com.company.ui.Remyl;
   import flash.filters.DropShadowFilter;


   public class Dokugehom extends Jazyv
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Dokugehom(param1:XML) {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:XML = null;
         super(3552822,1,10197915,1,true);
         this.danypifev=new Remyl(16,16777215,false,dolu-4,0);
         this.danypifev.setBold(true);
         this.danypifev.wordWrap=true;
         this.danypifev.text=String(param1.@id);
         this.danypifev.qovy();
         this.danypifev.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         this.danypifev.x=0;
         this.danypifev.y=0;
         addChild(this.danypifev);
         var _loc2_:* = "";
         if(param1.hasOwnProperty("Group"))
         {
            _loc2_=_loc2_+("Group: "+param1.Group+"\n");
         }
         if(param1.hasOwnProperty("Static"))
         {
            _loc2_=_loc2_+"Static\n";
         }
         if(param1.hasOwnProperty("Enemy"))
         {
            _loc2_=_loc2_+"Enemy\n";
            if(param1.hasOwnProperty("MaxHitPoints"))
            {
               _loc2_=_loc2_+("MaxHitPoints: "+param1.MaxHitPoints+"\n");
            }
            if(param1.hasOwnProperty("Defense"))
            {
               _loc2_=_loc2_+("Defense: "+param1.Defense+"\n");
            }
         }
         if(param1.hasOwnProperty("God"))
         {
            _loc2_=_loc2_+"God\n";
         }
         if(param1.hasOwnProperty("Quest"))
         {
            _loc2_=_loc2_+"Quest\n";
         }
         if(param1.hasOwnProperty("Hero"))
         {
            _loc2_=_loc2_+"Hero\n";
         }
         if(param1.hasOwnProperty("Encounter"))
         {
            _loc2_=_loc2_+"Encounter\n";
         }
         if(param1.hasOwnProperty("Level"))
         {
            _loc2_=_loc2_+("Level: "+param1.Level+"\n");
         }
         if(param1.hasOwnProperty("Terrain"))
         {
            _loc2_=_loc2_+("Terrain: "+param1.Terrain+"\n");
         }
         for each (_loc3_ in param1.Projectile)
         {
            _loc2_=_loc2_+("Projectile "+_loc3_.@id+": "+_loc3_.ObjectId+"\n"+"\tDamage: "+_loc3_.Damage+"\n"+"\tSpeed: "+_loc3_.Speed+"\n");
            if(_loc3_.hasOwnProperty("PassesCover"))
            {
               _loc2_=_loc2_+"\tPassesCover\n";
            }
            if(_loc3_.hasOwnProperty("MultiHit"))
            {
               _loc2_=_loc2_+"\tMultiHit\n";
            }
            if(_loc3_.hasOwnProperty("ConditionEffect"))
            {
               _loc2_=_loc2_+("\t"+_loc3_.ConditionEffect+" for "+_loc3_.ConditionEffect.@duration+" secs\n");
            }
            if(_loc3_.hasOwnProperty("Parametric"))
            {
               _loc2_=_loc2_+"\tParametric\n";
            }
         }
         this.rarac=new Remyl(14,11776947,false,dolu,0);
         this.rarac.wordWrap=true;
         this.rarac.text=String(_loc2_);
         this.rarac.qovy();
         this.rarac.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         this.rarac.x=0;
         this.rarac.y=this.danypifev.height+2;
         addChild(this.rarac);
         return;
      }

      private static const dolu:int = 180;

      private var danypifev:Remyl;

      private var rarac:Remyl;
   }
[/CLASS]
}