-- This script was generated using the MoonVeil Obfuscator v1.4.4 [https://moonveil.cc]

local He,sb,N,_e,na,Eb=bit32.bxor,type,getmetatable,pairs
local kd,Sd,pe=(string.char),(string.byte),(bit32 .bxor)
local pd=function(d_,F)
    local cb=''
    for I=23,(#d_-1)+23 do
        cb=cb..kd(pe(Sd(d_,(I-23)+1),Sd(F,(I-23)%#F+1)))
    end
    return cb
end
local o_=(select)
local U=(function(...)
    return{[1]={...},[2]=o_('#',...)}
end)
local Te=((function()
    local function Mc(Qe,ta,wa)
        if ta>wa then
            return
        end
        return Qe[ta],Mc(Qe,ta+1,wa)
    end
    return Mc
end)())
local gd,be=(string.gsub),(string.char)
local pa=(function(ha)
    ha=gd(ha,'[^ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=]','')
    return(ha:gsub('.',function(Kb)
        if(Kb=='=')then
            return''
        end
        local Jd,za='',(('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'):find(Kb)-1)
        for T=6,1,-1 do
            Jd=Jd..(za%2^T-za%2^(T-1)>0 and'1'or'0')
        end
        return Jd
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?',function(j)
        if(#j~=8)then
            return''
        end
        local Ge=0
        for Ce=1,8 do
            Ge=Ge+(j:sub(Ce,Ce)=='1'and 2^(8-Ce)or 0)
        end
        return be(Ge)
    end))
end)
local uc,Ya,wb,Ob,tb,yd,Vb,A=string.unpack,string.sub,string.byte,bit32 .lshift,bit32 .rshift,bit32 .band,table.concat,{}
local Za=(function(he)
    local w_=A[he]
    if w_ then
        return w_
    end
    local kb,La,qc,q,Ta=Ob(1,11),Ob(1,5),1,{},''
    while qc<=#he do
        local sa=wb(he,qc);
        qc=qc+1
        for hd=54,(8)+53 do
            local Xd=nil
            if not(yd(sa,1)~=0)then
                if qc+1<=#he then
                    local qe=uc('>I2',he,qc);
                    qc=qc+2
                    local Ke,je=#Ta-tb(qe,5),yd(qe,(La-1))+3;
                    Xd=Ya(Ta,Ke,Ke+je-1)
                end
            else
                if not(qc<=#he)then
                else
                    Xd=Ya(he,qc,qc);
                    qc=qc+1
                end
            end
            sa=tb(sa,1)
            if not(Xd)then
            else
                q[#q+1]=Xd;
                Ta=Ya(Ta..Xd,-kb)
            end
        end
    end
    local Pc=Vb(q);
    A[he]=Pc
    return Pc
end)
local Md=(function()
    local Rc,ea,ra,fc,Fb,da,_c,oc,Vc,rc,Qa,Ie=bit32 .bxor,bit32 .band,bit32 .bor,bit32 .lshift,bit32 .rshift,string.sub,string.pack,string.unpack,string.rep,table.pack,table.unpack,table.insert
    local function Bd(Pb,Qc,jb,Rb,J)
        local dd,ia,ca,de=Pb[Qc],Pb[jb],Pb[Rb],Pb[J]
        local Sa;
        dd=ea(dd+ia,4294967295);
        Sa=Rc(de,dd);
        de=ea(ra(fc(Sa,16),Fb(Sa,16)),4294967295);
        ca=ea(ca+de,4294967295);
        Sa=Rc(ia,ca);
        ia=ea(ra(fc(Sa,12),Fb(Sa,20)),4294967295);
        dd=ea(dd+ia,4294967295);
        Sa=Rc(de,dd);
        de=ea(ra(fc(Sa,8),Fb(Sa,24)),4294967295);
        ca=ea(ca+de,4294967295);
        Sa=Rc(ia,ca);
        ia=ea(ra(fc(Sa,7),Fb(Sa,25)),4294967295);
        Pb[Qc],Pb[jb],Pb[Rb],Pb[J]=dd,ia,ca,de
        return Pb
    end
    local l_,g={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
    local Re=function(pc,Fc,Ic)
        l_[1],l_[2],l_[3],l_[4]=4293049100,3421311126,2339363508,2920691330
        for Xa=77,(8)+76 do
            l_[(Xa-76)+4]=pc[(Xa-76)]
        end
        l_[13]=Fc
        for Ud=143,(3)+142 do
            l_[(Ud-142)+13]=Ic[(Ud-142)]
        end
        for ja=189,(16)+188 do
            g[(ja-188)]=l_[(ja-188)]
        end
        for ac=145,(10)+144 do
            Bd(g,1,5,9,13);
            Bd(g,2,6,10,14);
            Bd(g,3,7,11,15);
            Bd(g,4,8,12,16);
            Bd(g,1,6,11,16);
            Bd(g,2,7,12,13);
            Bd(g,3,8,9,14);
            Bd(g,4,5,10,15)
        end
        for Qb=189,(16)+188 do
            l_[(Qb-188)]=ea(l_[(Qb-188)]+g[(Qb-188)],4294967295)
        end
        return l_
    end
    local function fd(hb,Od,ma,Mb,Db)
        local Hd=#Mb-Db+1
        if not(Hd<64)then
        else
            local vd=da(Mb,Db);
            Mb=vd..Vc('\0',64-Hd);
            Db=1
        end
        assert(#Mb>=64)
        local fb,Aa=rc(oc('<I4I4I4I4I4I4I4I4I4I4I4I4I4I4I4I4',Mb,Db)),Re(hb,Od,ma)
        for we=180,(16)+179 do
            fb[(we-179)]=Rc(fb[(we-179)],Aa[(we-179)])
        end
        local c=_c('<I4I4I4I4I4I4I4I4I4I4I4I4I4I4I4I4',Qa(fb))
        if Hd<64 then
            c=da(c,1,Hd)
        end
        return c
    end
    local function Kd(Ma)
        local n_=''
        for vc=160,(#Ma)+159 do
            n_=n_..Ma[(vc-159)]
        end
        return n_
    end
    local function qa(Na,Ed,H,ic)
        local Ub,qd,ec,h=rc(oc('<I4I4I4I4I4I4I4I4',Na)),rc(oc('<I4I4I4',H)),{},1
        while h<=#ic do
            Ie(ec,fd(Ub,Ed,qd,ic,h));
            h=h+64;
            Ed=Ed+1
        end
        return Kd(ec)
    end
    return function(td,Yc,md)
        return qa(md,0,Yc,td)
    end
end)()
local dc=(function()
    local Wa,ne,Ua,bb,W,la,t_,vb,Va,nb,Gb=bit32 .bnot,bit32 .bxor,bit32 .rshift,bit32 .lshift,bit32 .band,bit32 .bor,table.insert,table.unpack,string.rep,string.char,string.byte
    local function yb(Fe,ve)
        local ge,Oc=Ua(Fe,ve),bb(Fe,32-ve)
        return W(la(ge,Oc),4294967295)
    end
    local v=function(Vd)
        local Dc={1116352408,1899447441,3049323471,3921009573,961987163,1508970993,2453635748,2870763221,3624381080,310598401,607225278,1426881987,1925078388,2162078206,2614888103,3248222580,3835390401,4022224774,264347078,604807628,770255983,1249150122,1555081692,1996064986,2554220882,2821834349,2952996808,3210313671,3336571891,3584528711,113926993,338241895,666307205,773529912,1294757372,1396182291,1695183700,1986661051,2177026350,2456956037,2730485921,2820302411,3259730800,3345764771,3516065817,3600352804,4094571909,275423344,430227734,506948616,659060556,883997877,958139571,1322822218,1537002063,1747873779,1955562222,2024104815,2227730452,2361852424,2428436474,2756734187,3204031479,3329325298}
        local function C(ud)
            local x=#ud
            local Z=x*8;
            ud=ud..'\128'
            local Xb=64-((x+9)%64)
            if not(Xb~=64)then
            else
                ud=ud..Va('\0',Xb)
            end
            ud=ud..nb(W(Ua(Z,56),255),W(Ua(Z,48),255),W(Ua(Z,40),255),W(Ua(Z,32),255),W(Ua(Z,24),255),W(Ua(Z,16),255),W(Ua(Z,8),255),W(Z,255))
            return ud
        end
        local function bd(M)
            local ae={}
            for ob=188,(#M)+187,64 do
                t_(ae,M:sub((ob-187),(ob-187)+63))
            end
            return ae
        end
        local function ab(Wd,zd)
            local p={}
            for Ee=53,(64)+52 do
                if(Ee-52)<=16 then
                    p[(Ee-52)]=la(bb(Gb(Wd,((Ee-52)-1)*4+1),24),bb(Gb(Wd,((Ee-52)-1)*4+2),16),bb(Gb(Wd,((Ee-52)-1)*4+3),8),Gb(Wd,((Ee-52)-1)*4+4))
                else
                    local Ae,lb=ne(yb(p[(Ee-52)-15],7),yb(p[(Ee-52)-15],18),Ua(p[(Ee-52)-15],3)),ne(yb(p[(Ee-52)-2],17),yb(p[(Ee-52)-2],19),Ua(p[(Ee-52)-2],10));
                    p[(Ee-52)]=W(p[(Ee-52)-16]+Ae+p[(Ee-52)-7]+lb,4294967295)
                end
            end
            local nc,kc,G,ad,Jb,wd,aa,Lc=vb(zd)
            for i_=228,(64)+227 do
                local oe,Fa=ne(yb(Jb,6),yb(Jb,11),yb(Jb,25)),ne(W(Jb,wd),W(Wa(Jb),aa))
                local _d,bc,yc=W(Lc+oe+Fa+Dc[(i_-227)]+p[(i_-227)],4294967295),ne(yb(nc,2),yb(nc,13),yb(nc,22)),ne(W(nc,kc),W(nc,G),W(kc,G))
                local fe=W(bc+yc,4294967295);
                Lc=aa;
                aa=wd;
                wd=Jb;
                Jb=W(ad+_d,4294967295);
                ad=G;
                G=kc;
                kc=nc;
                nc=W(_d+fe,4294967295)
            end
            return W(zd[1]+nc,4294967295),W(zd[2]+kc,4294967295),W(zd[3]+G,4294967295),W(zd[4]+ad,4294967295),W(zd[5]+Jb,4294967295),W(zd[6]+wd,4294967295),W(zd[7]+aa,4294967295),W(zd[8]+Lc,4294967295)
        end
        Vd=C(Vd)
        local Id,Nc,qb=bd(Vd),{1779033703,3144134277,1013904242,2773480762,1359893119,2600822924,528734635,1541459225},''
        for Sb,pb in ipairs(Id)do
            Nc={ab(pb,Nc)}
        end
        for Xc,Bb in ipairs(Nc)do
            qb=qb..nb(W(Ua(Bb,24),255));
            qb=qb..nb(W(Ua(Bb,16),255));
            qb=qb..nb(W(Ua(Bb,8),255));
            qb=qb..nb(W(Bb,255))
        end
        return qb
    end
    return v
end)()
local e_,_b,Pa,s_,Je,ee,ga,gc,Qd,Td,ub,B,Hb,Ha,Da,Fd,sd,Ad,Ec,Dd,Kc,db,Pd,ed,ke,K,id,Le,_a,R=type,pcall,error,tonumber,assert,select,setmetatable,string.format,string.unpack,string.sub,string.byte,string.char,table.move,table.pack,table.create,table.insert,table.concat,coroutine.create,coroutine.yield,coroutine.resume,coroutine.close,getfenv,bit32 .bor,bit32 .bxor,bit32 .band,bit32 .btest,bit32 .rshift,bit32 .lshift,bit32 .extract,{[30242]={},[54404]={{10,7,false},{3,9,false},{2,0,false},{10,9,false},{3,2,false},{8,8,false},{2,8,true},{2,1,true},{8,1,false},{2,2,false},{2,1,false},{3,9,false},{8,2,true},{2,7,true},{8,1,false},{2,1,false},{2,1,false},{10,8,true},{8,0,false},{2,1,false},{2,4,false},{2,8,true},{2,1,false},{10,7,false},{10,0,true},{2,9,true},{2,1,false},{10,1,false},{2,7,true},{8,2,false},{8,2,false},{5,0,true},{1,1,true},{1,8,false},{3,5,false},{2,4,false},{3,10,true},{3,5,true},{1,1,false},{5,6,false},{2,1,false},{2,1,false},{8,1,true},{5,5,true},{2,8,false},{10,6,true},{1,6,true},{2,5,true},{2,6,false},{8,1,false},{8,1,false},{3,3,false},{3,0,true},{8,1,false},{8,2,false},{2,1,false},{10,5,true},{5,5,false},{3,7,false},{3,1,false},{5,7,true},{2,1,false},{10,8,true},{2,0,false},{3,8,false},{3,6,false},{2,1,false},{5,9,false},{8,5,false},{8,5,false},{2,2,true},{2,1,false},{2,7,false},{2,8,false},{5,0,true},{8,8,false},{2,5,true},{10,7,true},{8,10,true},{1,1,false},{10,7,false},{5,5,true},{1,8,false},{8,1,false},{10,9,false},{5,5,false},{2,10,true},{3,0,true},{10,1,true},{8,9,true},{8,10,true},{8,6,false},{8,10,true},{8,7,false},{1,6,false},{2,1,false},{10,6,true},{5,9,false},{1,9,false},{3,2,false},{5,9,true},{8,2,false},{10,2,true},{5,1,true},{1,10,true},{8,8,true},{5,6,false},{10,9,true},{2,9,false},{1,10,true},{2,1,false},{10,7,false},{2,10,true},{10,6,true},{8,1,false},{2,1,false},{1,6,false},{3,5,true},{3,6,true},{2,2,false},{3,10,false},{1,10,true},{2,8,false},{8,7,true},{8,2,false},{10,7,false},{2,1,false},{5,6,true},{8,9,false},{2,7,false},{2,10,true},{2,8,true},{2,1,false},{1,2,true},{1,1,true},{2,5,true},{2,1,false},{2,1,false},{1,2,true},{3,5,false},{3,0,true},{5,10,false},{8,5,false},{1,9,false},{5,0,true},{5,8,false},{2,8,true},{1,1,false},{3,0,false},{8,1,true},{3,10,true},{2,1,true},{3,7,false},{2,1,false},{3,10,false},{2,1,false},{3,2,true},{1,6,false},{10,0,true},{8,6,false},{8,9,true},{2,8,true},{10,10,false},{1,5,true},{8,5,false},{2,1,false},{3,1,false},{5,9,true},{3,1,false},{5,2,true},{2,4,false},{2,8,true},{8,10,false},{1,6,true},{2,4,false},{2,1,true},{1,0,true},{8,9,true},{2,8,true},{2,4,false},{2,8,true},{5,5,true},{2,1,false},{10,10,true},{1,0,true},{2,4,false},{8,1,false},{5,8,false},{3,7,false},{3,7,false},{8,1,false},{5,8,false},{8,5,false},{8,10,false},{3,1,false},{3,0,true},{2,8,true},{8,1,true},{2,1,false},{2,0,false},{2,7,false},{8,7,false},{8,1,false},{8,1,true},{1,8,false},{1,1,false},{2,0,false},{8,1,true},{1,9,true},{3,6,false},{1,6,true},{5,2,true},{2,0,false},{2,7,false},{3,9,true},{2,1,false},{8,6,true},{10,5,true},{2,8,true},{10,8,true},{2,1,false},{3,7,false},{2,6,true},{3,8,false},{8,7,true},{10,5,true},{3,6,true},{10,2,false},{8,1,true},{2,1,false},{1,7,true},{8,1,false},{8,1,true},{2,1,true},{8,1,true},{3,8,false},{8,1,false},{2,5,true},{2,8,true},{2,6,true},{10,5,true},{2,9,true},{1,10,true},{3,1,true},{3,8,false},{10,8,false},{8,1,false},{2,1,false},{2,1,false},{2,1,false},{1,0,true},{2,1,false},{2,9,false},{8,10,false},{3,10,true},{10,6,false}},[40928]={}}
local ce=(function(X)
    local Nb=R[30242][X]
    if not(Nb)then
    else
        return Nb
    end
    local tc=1
    local function V()
        local xd,Wc,Bc,zc,Cb,zb,ib,se_,Ac,re_,Tb,Yd,Oa,Gc,hc,Ia,Zb,ld,Yb,L,va,Jc,od,Pe,Wb,eb,Zd,Se,rb,Ka,xb,fa_,Nd;
        xb,Nd={},function(cd,Oe,Ab)
            xb[Ab]=He(Oe,41583)-He(cd,56771)
            return xb[Ab]
        end;
        zc=xb[6200]or Nd(35552,112305,6200)
        while zc~=2857 do
            if not(zc<=31808)then
                if zc<=49712 then
                    if zc<=41917 then
                        if zc>=35907 then
                            if not(zc<=38566)then
                                if not(zc<41426)then
                                    if not(zc<=41426)then
                                        va=ed(Yb,241);
                                        zc=35203
                                        continue
                                    else
                                        if not((Yd>=0 and Jc>ld)or((Yd<0 or Yd~=Yd)and Jc<ld))then
                                            zc=2961
                                        else
                                            zc=1298
                                        end
                                    end
                                else
                                    return{[19799]=Yd,[43684]=Pe,[43180]=hc,[3635]=Yb,[39491]=Cb,[24446]=re_}
                                end
                            else
                                if not(zc<=36574)then
                                    if not(zc<=37889)then
                                        Yd=re_;
                                        Tb=nil;
                                        zc=xb[32343]or Nd(46606,124122,32343)
                                    else
                                        ld=Jc;
                                        Yd=Da(ld);
                                        Tb,Ia,od=1,ld,1;
                                        zc=14810
                                    end
                                else
                                    if not(zc<=36464)then
                                        rb=U(Zb);
                                        zc=xb[6306]or Nd(42877,13080,6306)
                                        continue
                                    else
                                        if zc>35907 then
                                            Jc=Qd('B',X,tc);
                                            tc=tc+1;
                                            zc=xb[22833]or Nd(18709,129870,22833)
                                        else
                                            Zb[37361]=ke(id(Ia,8),255);
                                            Zb[49006]=ke(id(Ia,16),255);
                                            Zb[5164]=ke(id(Ia,24),255);
                                            zc=xb[24999]or Nd(42049,117435,24999)
                                        end
                                    end
                                end
                            end
                        elseif not(zc>34189)then
                            if zc<=33452 then
                                if zc>32544 then
                                    Ac=Qd('B',X,tc);
                                    tc=tc+1;
                                    zc=45036
                                elseif not(zc>31935)then
                                    Gc=se_;
                                    L=Da(Gc);
                                    Jc,ld,Yd=1,Gc,1;
                                    zc=xb[-315]or Nd(32707,110211,-315)
                                else
                                    Oa=Wc;
                                    re_=Da(Oa);
                                    Bc=false;
                                    L,Gc,se_=1,Oa,1;
                                    zc=xb[14326]or Nd(24773,26988,14326)
                                end
                            else
                                if not((se_>=0 and re_>Bc)or((se_<0 or se_~=se_)and re_<Bc))then
                                    zc=xb[20605]or Nd(36021,24279,20605)
                                else
                                    zc=xb[-13617]or Nd(24733,103451,-13617)
                                end
                            end
                        else
                            if zc<35798 then
                                Yb=va;
                                Cb='';
                                Wc=nil;
                                zc=18452
                            elseif not(zc>35798)then
                                Yd[Se]=V();
                                zc=xb[-21298]or Nd(24932,100082,-21298)
                            else
                                Zd=ed(ib,-79623541);
                                zc=5901
                                continue
                            end
                        end
                    elseif zc<=46438 then
                        if zc<=45036 then
                            if zc<43842 then
                                if zc>43222 then
                                    if not((Yd>=0 and Jc>ld)or((Yd<0 or Yd~=Yd)and Jc<ld))then
                                        zc=xb[8429]or Nd(23764,11521,8429)
                                    else
                                        zc=9569
                                    end
                                else
                                    zb=nil;
                                    zc=xb[-8530]or Nd(23082,15367,-8530)
                                end
                            elseif zc>44895 then
                                eb=ed(Ac,241);
                                zc=xb[-24054]or Nd(43852,20046,-24054)
                                continue
                            elseif not(zc>43842)then
                                L=nil;
                                zc=36464
                            else
                                Jc=Jc+Yd;
                                Tb=Jc
                                if not(Jc~=Jc)then
                                    zc=43434
                                else
                                    zc=xb[23059]or Nd(27265,32460,23059)
                                end
                            end
                        elseif not(zc>=46173)then
                            hc=Qd('B',X,tc);
                            tc=tc+1;
                            zc=xb[31866]or Nd(48977,52134,31866)
                        else
                            if not(zc>46173)then
                                Zb[37361]=ke(id(Ia,8),255);
                                zb=ke(id(Ia,16),65535);
                                Zb[51063]=zb;
                                Ka=nil;
                                xd=zb;
                                Ka=if xd<32768 then xd else xd-65536;
                                Zb[34635]=Ka;
                                zc=xb[-29347]or Nd(56994,20700,-29347)
                            else
                                Ia=ed(od,241);
                                zc=29008
                                continue
                            end
                        end
                    elseif not(zc<=48571)then
                        if not(zc>48592)then
                            zc=xb[242]or Nd(60163,3513,242)
                            continue
                        else
                            rb=U(nil);
                            zc=xb[9183]or Nd(16286,106356,9183)
                        end
                    else
                        if zc<48206 then
                            if not(zc<=46821)then
                                Tb=Jc
                                if not(ld~=ld)then
                                    zc=xb[-6060]or Nd(59291,18029,-6060)
                                else
                                    zc=xb[18172]or Nd(51140,40199,18172)
                                end
                            else
                                se_=se_+L;
                                Jc=se_
                                if not(se_~=se_)then
                                    zc=55377
                                else
                                    zc=12910
                                end
                            end
                        elseif not(zc<=48206)then
                            Wb=nil;
                            zc=xb[-4512]or Nd(60324,13874,-4512)
                        else
                            L[Tb]=Se;
                            zc=xb[-1068]or Nd(10153,98976,-1068)
                        end
                    end
                elseif zc>55378 then
                    if zc>58870 then
                        if not(zc<62852)then
                            if not(zc>=62991)then
                                Tb=ed(Ia,241);
                                zc=xb[20296]or Nd(18308,130189,20296)
                                continue
                            else
                                if zc>62991 then
                                    Gc=0;
                                    L,Jc,ld=0,4,1;
                                    zc=57246
                                else
                                    Jc=L;
                                    Oa=Pd(Oa,Le(ke(Jc,127),Gc*7))
                                    if not(not K(Jc,128))then
                                    else
                                        zc=xb[-1490]or Nd(39909,106905,-1490)
                                        continue
                                    end
                                    zc=xb[-23378]or Nd(60085,23431,-23378)
                                end
                            end
                        else
                            if not(zc>=61982)then
                                if ib then
                                    zc=xb[-9953]or Nd(36265,23343,-9953)
                                    continue
                                end
                                zc=xb[-26500]or Nd(33651,26764,-26500)
                            else
                                if not(zc<=61982)then
                                    Se=nil;
                                    zc=xb[8043]or Nd(13060,67962,8043)
                                else
                                    Tb=nil;
                                    zc=54774
                                end
                            end
                        end
                    elseif zc<=57112 then
                        if zc>=56749 then
                            if not(zc>56749)then
                                zc=xb[-21046]or Nd(43771,7658,-21046)
                                continue
                            else
                                od=Yd
                                if not(Tb~=Tb)then
                                    zc=58870
                                else
                                    zc=xb[-25635]or Nd(18293,16748,-25635)
                                end
                            end
                        elseif not(zc>56040)then
                            Ia=Qd('<I4',X,tc);
                            tc=tc+4;
                            zc=xb[-7592]or Nd(8900,90235,-7592)
                        else
                            zb=ib;
                            Ka=Qd('c'..zb,X,tc);
                            tc=tc+zb;
                            zc=xb[4839]or Nd(35460,53234,4839)
                        end
                    elseif zc<58460 then
                        Yd=L
                        if Jc~=Jc then
                            zc=xb[15865]or Nd(2429,21807,15865)
                        else
                            zc=54585
                        end
                    elseif zc<=58460 then
                        Ia[34547]=_a(Ia[64681],0,1)==1;
                        Ia[14677]=_a(Ia[64681],31,1)==1;
                        zc=xb[21115]or Nd(55619,4528,21115)
                    else
                        if not((Ia>=0 and Yd>Tb)or((Ia<0 or Ia~=Ia)and Yd<Tb))then
                            zc=7091
                        else
                            zc=xb[-4153]or Nd(28682,21625,-4153)
                        end
                    end
                elseif not(zc>54252)then
                    if zc>50331 then
                        if not(zc>=54200)then
                            Ia[34547]=od[_a(Ia[64681],0,24)+1];
                            Ia[14677]=_a(Ia[64681],31,1)==1;
                            zc=xb[-14557]or Nd(35926,107163,-14557)
                        else
                            if zc<=54200 then
                                if not((Ka>=0 and Zb>zb)or((Ka<0 or Ka~=Ka)and Zb<zb))then
                                    zc=27075
                                else
                                    zc=xb[-24840]or Nd(7750,126219,-24840)
                                end
                            else
                                hc=fa_;
                                va=nil;
                                zc=28008
                            end
                        end
                    elseif zc>=50185 then
                        if not(zc>50251)then
                            if zc>50185 then
                                L=ed(Jc,241);
                                zc=62991
                                continue
                            else
                                zb=ke(id(Ia,8),16777215);
                                Ka=nil;
                                xd=zb;
                                Ka=if xd<8388608 then xd else xd-16777216;
                                Zb[36872]=Ka;
                                zc=xb[20569]or Nd(59660,99918,20569)
                            end
                        else
                            Ia=Tb;
                            Gc=Pd(Gc,Le(ke(Ia,127),Yd*7))
                            if not(not K(Ia,128))then
                            else
                                zc=xb[-14087]or Nd(14485,72115,-14087)
                                continue
                            end
                            zc=xb[-30055]or Nd(21849,19076,-30055)
                        end
                    elseif not(zc<=49778)then
                        Tb=ed(Ia,-1504438293);
                        zc=297
                        continue
                    else
                        re_=re_+se_;
                        Gc=re_
                        if re_~=re_ then
                            zc=xb[10365]or Nd(55264,8534,10365)
                        else
                            zc=34189
                        end
                    end
                else
                    if not(zc>=54918)then
                        if not(zc>54764)then
                            if zc<=54585 then
                                if(ld>=0 and L>Jc)or((ld<0 or ld~=ld)and L<Jc)then
                                    zc=xb[16575]or Nd(47067,12021,16575)
                                else
                                    zc=61982
                                end
                            else
                                rb=Ia[64681];
                                Zd=id(rb,30);
                                ib=ke(id(rb,20),1023);
                                Ia[34547]=od[ib+1];
                                Ia[8477]=Zd
                                if not(Zd==2)then
                                    if not(Zd==3)then
                                    else
                                        zc=xb[-9335]or Nd(22750,17916,-9335)
                                        continue
                                    end
                                else
                                    zc=xb[-31605]or Nd(51800,11369,-31605)
                                    continue
                                end
                                zc=xb[2294]or Nd(31933,127666,2294)
                            end
                        else
                            Ia=Qd('B',X,tc);
                            tc=tc+1;
                            zc=62852
                        end
                    else
                        if not(zc<=55377)then
                            Zb=Zb+Ka;
                            xd=Zb
                            if Zb~=Zb then
                                zc=xb[19382]or Nd(61893,5514,19382)
                            else
                                zc=54200
                            end
                        else
                            if not(zc>55349)then
                                if zc>54918 then
                                    Zd=Qd('<d',X,tc);
                                    tc=tc+8;
                                    zc=xb[-25137]or Nd(44566,31851,-25137)
                                else
                                    zc=xb[7817]or Nd(20245,5943,7817)
                                    continue
                                end
                            else
                                if not((L>=0 and se_>Gc)or((L<0 or L~=L)and se_<Gc))then
                                    zc=xb[-28590]or Nd(37754,56982,-28590)
                                else
                                    zc=12910
                                end
                            end
                        end
                    end
                end
            else
                if zc<=17838 then
                    if not(zc<=7091)then
                        if not(zc>12910)then
                            if not(zc<11840)then
                                if not(zc<12708)then
                                    if zc>12708 then
                                        se_=nil;
                                        zc=63853
                                    else
                                        rb=nil;
                                        zc=55349
                                    end
                                else
                                    if not(zc>11840)then
                                        if Bc then
                                            zc=xb[-8827]or Nd(47561,5614,-8827)
                                            continue
                                        else
                                            zc=xb[30802]or Nd(8821,114971,30802)
                                            continue
                                        end
                                        zc=xb[-1952]or Nd(3744,75815,-1952)
                                    else
                                        rb=Se;
                                        ld=Pd(ld,Le(ke(rb,127),od*7))
                                        if not(not K(rb,128))then
                                        else
                                            zc=xb[-7246]or Nd(27331,79554,-7246)
                                            continue
                                        end
                                        zc=xb[-22729]or Nd(2274,112800,-22729)
                                    end
                                end
                            else
                                if not(zc<9829)then
                                    if not(zc<=9829)then
                                        Se=rb;
                                        zc=xb[-9963]or Nd(4694,76172,-9963)
                                    else
                                        Jc=Jc+Yd;
                                        Tb=Jc
                                        if not(Jc~=Jc)then
                                            zc=41426
                                        else
                                            zc=xb[-16354]or Nd(38308,61206,-16354)
                                        end
                                    end
                                else
                                    if zc<=8834 then
                                        se_=ed(Gc,-79623541);
                                        zc=xb[31752]or Nd(33504,31117,31752)
                                        continue
                                    else
                                        Jc=nil;
                                        zc=20855
                                    end
                                end
                            end
                        else
                            if zc<16037 then
                                if zc>=14376 then
                                    if zc>14376 then
                                        Se=Tb
                                        if not(Ia~=Ia)then
                                            zc=25207
                                        else
                                            zc=xb[31179]or Nd(54740,220,31179)
                                        end
                                    else
                                        rb=Qd('B',X,tc);
                                        tc=tc+1;
                                        zc=xb[-2845]or Nd(24859,108348,-2845)
                                    end
                                else
                                    zb=ed(Ka,-1504438293);
                                    zc=xb[-22616]or Nd(16499,18701,-22616)
                                    continue
                                end
                            elseif not(zc>=17308)then
                                Zb=nil;
                                zc=xb[23771]or Nd(51151,22309,23771)
                            else
                                if not(zc>17308)then
                                    Pe=Wb;
                                    fa_=nil;
                                    zc=xb[3724]or Nd(20371,124006,3724)
                                else
                                    Yd=Yd+Ia;
                                    od=Yd
                                    if not(Yd~=Yd)then
                                        zc=58870
                                    else
                                        zc=xb[-14301]or Nd(23143,28062,-14301)
                                    end
                                end
                            end
                        end
                    else
                        if zc<3671 then
                            if not(zc>2961)then
                                if zc<1298 then
                                    if not(zc<=297)then
                                        Bc=ld;
                                        zc=xb[22091]or Nd(43808,102311,22091)
                                    else
                                        Ia=Tb;
                                        od=ke(Ia,255);
                                        Se=R[54404][od+1];
                                        rb=Se[1];
                                        Zd=Se[2];
                                        ib=Se[3];
                                        Zb={[34572]=od,[34547]=0,[37361]=0,[5164]=0,[65216]=nil,[53189]=0,[36872]=0,[49006]=0,[22160]=0,[51063]=0,[14677]=0,[8477]=0,[59464]=Zd,[64681]=0,[34635]=0};
                                        Fd(Yd,Zb)
                                        if rb==3 then
                                            zc=xb[25335]or Nd(17351,114786,25335)
                                            continue
                                        elseif rb==8 then
                                            zc=xb[-8366]or Nd(38449,107040,-8366)
                                            continue
                                        elseif rb==2 then
                                            zc=xb[-2205]or Nd(48035,20684,-2205)
                                            continue
                                        end
                                        zc=61266
                                    end
                                elseif not(zc<=1847)then
                                    Ia=nil;
                                    zc=25817
                                else
                                    if not(zc<=1298)then
                                        fa_=ed(hc,241);
                                        zc=xb[6806]or Nd(49927,20703,6806)
                                        continue
                                    else
                                        Yd,Jc,ld=1,1,Oa;
                                        zc=47268
                                    end
                                end
                            else
                                if not(zc<3411)then
                                    if not(zc<=3411)then
                                        Jc=se_
                                        if not(Gc~=Gc)then
                                            zc=xb[15634]or Nd(4889,66884,15634)
                                        else
                                            zc=12910
                                        end
                                    else
                                        zc=xb[28679]or Nd(51460,713,28679)
                                        continue
                                    end
                                else
                                    rb=U'';
                                    zc=xb[31720]or Nd(36045,50600,31720)
                                    continue
                                end
                            end
                        elseif zc<5759 then
                            if not(zc<4678)then
                                if not(zc<=4678)then
                                    Zb=Ka;
                                    zc=xb[-23655]or Nd(1954,117584,-23655)
                                    continue
                                else
                                    Ia[34547]=od[Ia[37361]+1];
                                    zc=xb[31317]or Nd(40171,21224,31317)
                                end
                            else
                                if not(zc>3671)then
                                    Ia,od=re_[Tb],L;
                                    Se=Ia[59464]
                                    if not(Se==4)then
                                        if not(Se==7)then
                                            if Se==5 then
                                                zc=xb[-3434]or Nd(44236,16978,-3434)
                                                continue
                                            elseif not(Se==8)then
                                                if not(Se==3)then
                                                    if Se==2 then
                                                        zc=xb[-23670]or Nd(60219,110219,-23670)
                                                        continue
                                                    elseif not(Se==10)then
                                                    else
                                                        zc=xb[-19615]or Nd(12279,72352,-19615)
                                                        continue
                                                    end
                                                else
                                                    zc=xb[-28243]or Nd(43479,19903,-28243)
                                                    continue
                                                end
                                            else
                                                zc=xb[-10992]or Nd(32782,53104,-10992)
                                                continue
                                            end
                                        else
                                            zc=xb[-8356]or Nd(11270,95310,-8356)
                                            continue
                                        end
                                    else
                                        zc=xb[-7821]or Nd(64953,37039,-7821)
                                        continue
                                    end
                                    zc=xb[-2052]or Nd(21838,103811,-2052)
                                else
                                    Ia[34547]=od[Ia[64681]+1];
                                    zc=xb[-14677]or Nd(27829,115386,-14677)
                                end
                            end
                        elseif zc>5901 then
                            Se=nil;
                            zc=14376
                        elseif zc>5817 then
                            ib=Zd
                            if ib==0 then
                                zc=xb[-27521]or Nd(36994,64139,-27521)
                                continue
                            else
                                zc=xb[-30715]or Nd(42194,5593,-30715)
                                continue
                            end
                            zc=xb[-10934]or Nd(20496,19198,-10934)
                        elseif not(zc<=5759)then
                            Se=Te(rb[1],1,rb[2]);
                            zc=xb[-27247]or Nd(14534,66364,-27247)
                        else
                            Ka=Qd('<I4',X,tc);
                            tc=tc+4;
                            zc=xb[3784]or Nd(53281,58061,3784)
                        end
                    end
                elseif not(zc>25534)then
                    if zc<21367 then
                        if not(zc<18622)then
                            if zc>=19890 then
                                if zc>19890 then
                                    ld=0;
                                    Yd,Ia,Tb=0,1,4;
                                    zc=xb[8741]or Nd(40521,98509,8741)
                                else
                                    Ka=zb;
                                    Zb[64681]=Ka;
                                    Fd(Yd,{});
                                    zc=xb[28374]or Nd(56878,53839,28374)
                                end
                            elseif not(zc>18622)then
                                Gc=re_
                                if not(Bc~=Bc)then
                                    zc=xb[30422]or Nd(39031,26926,30422)
                                else
                                    zc=xb[-923]or Nd(5115,124193,-923)
                                end
                            else
                                ib=0;
                                Ka,Zb,zb=1,0,4;
                                zc=31808
                            end
                        else
                            if not(zc>=18509)then
                                Oa=0;
                                re_,Bc,se_=0,4,1;
                                zc=18622
                            else
                                if zc<=18509 then
                                    Jc=ed(ld,-79623541);
                                    zc=37889
                                    continue
                                else
                                    Se=ed(rb,241);
                                    zc=12135
                                    continue
                                end
                            end
                        end
                    elseif not(zc<24955)then
                        if not(zc>=25207)then
                            if not(zc<=24955)then
                                Zb=ke(id(rb,10),1023);
                                zb=ke(id(rb,0),1023);
                                Ia[53189]=od[Zb+1];
                                Ia[22160]=od[zb+1];
                                zc=xb[3595]or Nd(54183,8108,3595)
                            else
                                Wb=ed(Pe,241);
                                zc=17308
                                continue
                            end
                        else
                            if not(zc<=25207)then
                                ld=nil;
                                zc=38566
                            else
                                if not((od>=0 and Tb>Ia)or((od<0 or od~=od)and Tb<Ia))then
                                    zc=35798
                                else
                                    zc=39580
                                end
                            end
                        end
                    else
                        if zc<24054 then
                            if zc<=21367 then
                                Bc=false;
                                zc=xb[-18495]or Nd(8562,70137,-18495)
                            else
                                Zd=nil;
                                zc=18661
                            end
                        elseif zc>24054 then
                            L=L+ld;
                            Yd=L
                            if L~=L then
                                zc=xb[-7427]or Nd(5240,20050,-7427)
                            else
                                zc=54585
                            end
                        else
                            Pe=Qd('B',X,tc);
                            tc=tc+1;
                            zc=xb[-23714]or Nd(512,123729,-23714)
                        end
                    end
                else
                    if not(zc<=28462)then
                        if not(zc<=30998)then
                            if not(zc>31676)then
                                Ia[34547]=od[Ia[36872]+1];
                                zc=xb[8271]or Nd(37628,23793,8271)
                            else
                                xd=Zb
                                if not(zb~=zb)then
                                    zc=54200
                                else
                                    zc=xb[22288]or Nd(33459,18720,22288)
                                end
                            end
                        else
                            if zc<30315 then
                                if zc>29008 then
                                    Ac=eb;
                                    ib=Pd(ib,Le(ke(Ac,127),xd*7))
                                    if not K(Ac,128)then
                                        zc=xb[18527]or Nd(24219,12996,18527)
                                        continue
                                    end
                                    zc=xb[21289]or Nd(49422,22384,21289)
                                else
                                    od=Ia
                                    if od==2 then
                                        zc=xb[-3745]or Nd(27199,19407,-3745)
                                        continue
                                    elseif not(od==4)then
                                        if not(od==3)then
                                        else
                                            zc=xb[-30009]or Nd(17589,129481,-30009)
                                            continue
                                        end
                                    else
                                        zc=xb[-5408]or Nd(53552,23850,-5408)
                                        continue
                                    end
                                    zc=48206
                                end
                            elseif not(zc>30315)then
                                Zb=ke(id(rb,10),1023);
                                Ia[53189]=od[Zb+1];
                                zc=xb[8173]or Nd(5815,121020,8173)
                            else
                                Wc=ed(Oa,-79623541);
                                zc=xb[-29684]or Nd(53539,11887,-29684)
                                continue
                            end
                        end
                    else
                        if zc<=27372 then
                            if zc<27075 then
                                if zc<=25817 then
                                    od=Qd('B',X,tc);
                                    tc=tc+1;
                                    zc=xb[-6530]or Nd(15779,79785,-6530)
                                else
                                    Tb=Tb+od;
                                    Se=Tb
                                    if Tb~=Tb then
                                        zc=39580
                                    else
                                        zc=xb[32162]or Nd(41030,32147,32162)
                                    end
                                end
                            elseif not(zc>=27183)then
                                eb=nil;
                                zc=xb[18843]or Nd(40356,24956,18843)
                            else
                                if not(zc>27183)then
                                    rb=Zd;
                                    zc=xb[-12777]or Nd(41772,1962,-12777)
                                    continue
                                else
                                    Tb=Jc
                                    if not(ld~=ld)then
                                        zc=41426
                                    else
                                        zc=xb[-5346]or Nd(18296,15778,-5346)
                                    end
                                end
                            end
                        elseif not(zc>28008)then
                            if not(zc>27699)then
                                ld=ib;
                                zc=506
                                continue
                            else
                                Yb=Qd('B',X,tc);
                                tc=tc+1;
                                zc=41917
                            end
                        else
                            Ia[34547]=od[Ia[34635]+1];
                            zc=xb[-29392]or Nd(56980,4313,-29392)
                        end
                    end
                end
            end
        end
    end
    local De=V();
    R[30242][X]=De
    return De
end)
local D=(function(Uc,Gd)
    Uc=ce(Uc)
    local O=db()
    local function ze(mc,m)
        local Hc=(function(...)
            return{...},ee('#',...)
        end)
        local Cc;
        Cc=(function(lc,a_,z)
            if a_>z then
                return
            end
            return lc[a_],Cc(lc,a_+1,z)
        end)
        local function sc(r_,ye,mb,Zc)
            local Lb,Ba,ue,ba,wc,oa,rd,Ja,S,Y,me,gb,Ra,ie,k,ka,Ld,le,xe,ua,Ca,Rd,P,f_;
            Ld,le={},function(y,Ga,b_)
                Ld[Ga]=He(y,60835)-He(b_,51947)
                return Ld[Ga]
            end;
            S=Ld[31212]or le(22971,31212,41253)
            repeat
                if not(S<=35564)then
                    if not(S<51339)then
                        if S>59627 then
                            if not(S<62883)then
                                if not(S>64418)then
                                    if S<63621 then
                                        if not(S<=62969)then
                                            Y=mb[Ca];
                                            ie=Y[34572];
                                            S=Ld[24731]or le(105468,24731,1861)
                                        else
                                            if S<=62883 then
                                                k=Rd-gb+1;
                                                S=Ld[-15026]or le(1884,-15026,30551)
                                            else
                                                Ca-=1;
                                                mb[Ca]={[34572]=247,[37361]=ed(Y[37361],40),[49006]=ed(Y[49006],165),[5164]=0};
                                                S=Ld[16965]or le(35948,16965,38502)
                                            end
                                        end
                                    elseif not(S<=63784)then
                                        if not(Y[5164]==7)then
                                            if not(Y[5164]==65)then
                                                if not(Y[5164]==213)then
                                                    S=Ld[6460]or le(12989,6460,46836)
                                                    continue
                                                else
                                                    S=Ld[-28037]or le(122390,-28037,45397)
                                                    continue
                                                end
                                            else
                                                S=Ld[-1375]or le(92895,-1375,27216)
                                                continue
                                            end
                                        else
                                            S=Ld[-21147]or le(9789,-21147,27025)
                                            continue
                                        end
                                        S=Ld[6751]or le(18379,6751,28621)
                                    else
                                        if S>63621 then
                                            Ja=f_
                                            if not(rd~=rd)then
                                                S=14868
                                            else
                                                S=Ld[24633]or le(22898,24633,55780)
                                            end
                                        else
                                            if r_[Y[37361]]==r_[Y[64681]]then
                                                S=Ld[20976]or le(82137,20976,8672)
                                                continue
                                            else
                                                S=Ld[-28420]or le(17727,-28420,38130)
                                                continue
                                            end
                                            S=Ld[-24251]or le(63666,-24251,50468)
                                        end
                                    end
                                else
                                    if S<=65155 then
                                        if not(S>=65123)then
                                            Ra=me;
                                            S=8100
                                            continue
                                        else
                                            if S>65123 then
                                                gb=nil;
                                                Ra=ed(Y[51063],30900);
                                                gb=if Ra<32768 then Ra else Ra-65536;
                                                oa=gb;
                                                k=ye[oa+1];
                                                me=k[3635];
                                                Lb=Da(me);
                                                r_[ed(Y[37361],43)]=ze(k,Lb);
                                                f_,ba,Ba=1,me,1;
                                                S=Ld[-15211]or le(123372,-15211,6807)
                                            else
                                                gb=Y[8477];
                                                Ra=Y[34547];
                                                oa=O[Ra]or R[40928][Ra]
                                                if not(gb==1)then
                                                    if gb==2 then
                                                        S=Ld[-12591]or le(82764,-12591,28922)
                                                        continue
                                                    elseif gb==3 then
                                                        S=Ld[32494]or le(121259,32494,21006)
                                                        continue
                                                    end
                                                else
                                                    S=Ld[7191]or le(123375,7191,30731)
                                                    continue
                                                end
                                                S=55615
                                            end
                                        end
                                    elseif not(S<=65166)then
                                        if not(ie>55)then
                                            S=Ld[23909]or le(53521,23909,62207)
                                            continue
                                        else
                                            S=Ld[18086]or le(49668,18086,53833)
                                            continue
                                        end
                                        S=Ld[27912]or le(44293,27912,61839)
                                    else
                                        gb=Y[34547];
                                        Ra=Y[14677];
                                        oa=r_[Y[37361]]
                                        if(oa==gb)~=Ra then
                                            S=Ld[26064]or le(29996,26064,53231)
                                            continue
                                        else
                                            S=Ld[1566]or le(12761,1566,7855)
                                            continue
                                        end
                                        S=Ld[20489]or le(1567,20489,11409)
                                    end
                                end
                            else
                                if not(S<=61078)then
                                    if S>62411 then
                                        r_[Y[37361]]=oa[Y[53189]];
                                        S=Ld[16628]or le(110517,16628,41532)
                                    elseif S<61968 then
                                        Ra[22160]=me;
                                        S=Ld[7148]or le(50101,7148,60839)
                                    elseif not(S>61968)then
                                        if not r_[Y[37361]]then
                                            S=Ld[-20376]or le(120063,-20376,27333)
                                            continue
                                        end
                                        S=Ld[-25299]or le(21840,-25299,31066)
                                    else
                                        ka=ba
                                        if not(f_~=f_)then
                                            S=Ld[-30551]or le(6860,-30551,56998)
                                        else
                                            S=Ld[22051]or le(125502,22051,47600)
                                        end
                                    end
                                else
                                    if S>60357 then
                                        if not(S<=60736)then
                                            if not(ie>247)then
                                                S=Ld[-2879]or le(6452,-2879,59111)
                                                continue
                                            else
                                                S=Ld[30245]or le(2528,30245,57237)
                                                continue
                                            end
                                            S=Ld[6374]or le(828,6374,9142)
                                        else
                                            if ie>178 then
                                                S=Ld[26930]or le(82499,26930,15869)
                                                continue
                                            else
                                                S=Ld[165]or le(18028,165,33290)
                                                continue
                                            end
                                            S=Ld[9114]or le(65474,9114,51188)
                                        end
                                    elseif S>60325 then
                                        if ie>229 then
                                            S=Ld[9356]or le(113048,9356,41597)
                                            continue
                                        else
                                            S=Ld[-32013]or le(53505,-32013,59009)
                                            continue
                                        end
                                        S=Ld[30521]or le(9259,30521,3757)
                                    elseif S>59868 then
                                        Ca+=1;
                                        S=Ld[-20028]or le(14172,-20028,8022)
                                    elseif not(S<=59698)then
                                        gb=m[Y[49006]+1];
                                        gb[3][gb[2]]=r_[Y[37361]];
                                        S=Ld[-6803]or le(10019,-6803,4053)
                                    else
                                        Ra[53189]=k;
                                        S=Ld[27204]or le(14522,27204,1188)
                                    end
                                end
                            end
                        elseif not(S<=56485)then
                            if not(S>=58275)then
                                if not(S>=57246)then
                                    if not(S>56748)then
                                        Ca+=Y[34635];
                                        S=Ld[-12821]or le(482,-12821,11284)
                                    else
                                        Ra=Zc[52928];
                                        Rd=gb+Ra-1;
                                        S=Ld[-14588]or le(12631,-14588,62714)
                                    end
                                else
                                    if S<=57933 then
                                        if not(S>57246)then
                                            Ca-=1;
                                            mb[Ca]={[34572]=198,[37361]=ed(Y[37361],15),[49006]=ed(Y[49006],142),[5164]=0};
                                            S=Ld[-13102]or le(4320,-13102,13034)
                                        else
                                            Lb,Ba=Ra[22160],Y[22160];
                                            Ba='\151\30\161\4\137'..Ba;
                                            ba='';
                                            rd,ka,f_=#Lb-1,1,0;
                                            S=Ld[9953]or le(96523,9953,20843)
                                        end
                                    else
                                        if not((rd>=0 and ba>f_)or((rd<0 or rd~=rd)and ba<f_))then
                                            S=21091
                                        else
                                            S=Ld[829]or le(98866,829,4580)
                                        end
                                    end
                                end
                            else
                                if not(S<=59073)then
                                    if S<=59397 then
                                        me,Lb=Ra[53189],Y[53189];
                                        Lb='\151\30\161\4\137'..Lb;
                                        Ba='';
                                        rd,f_,ba=1,#me-1,0;
                                        S=Ld[-23769]or le(100744,-23769,47755)
                                    else
                                        if ie>92 then
                                            S=Ld[-29700]or le(54847,-29700,64689)
                                            continue
                                        else
                                            S=Ld[-29596]or le(124923,-29596,18401)
                                            continue
                                        end
                                        S=Ld[-20430]or le(57297,-20430,59355)
                                    end
                                else
                                    if not(S>58361)then
                                        if not(S<=58275)then
                                            ba=me
                                            if Lb~=Lb then
                                                S=Ld[-9853]or le(121858,-9853,13161)
                                            else
                                                S=Ld[20989]or le(41600,20989,49200)
                                            end
                                        else
                                            oa=Lb;
                                            S=42112
                                            continue
                                        end
                                    else
                                        Ca-=1;
                                        mb[Ca]={[34572]=55,[37361]=ed(Y[37361],109),[49006]=ed(Y[49006],37),[5164]=0};
                                        S=Ld[10459]or le(1480,10459,10690)
                                    end
                                end
                            end
                        else
                            if not(S>=53403)then
                                if S<52978 then
                                    if not(S<=51857)then
                                        gb,Ra,oa=ed(Y[5164],95),ed(Y[49006],198),ed(Y[37361],89);
                                        k=Ra==0 and Rd-gb or Ra-1;
                                        me=r_[gb];
                                        Lb,Ba=Hc(me(Cc(r_,gb+1,gb+k)))
                                        if not(oa==0)then
                                            S=Ld[-9133]or le(13634,-9133,64839)
                                            continue
                                        else
                                            S=Ld[6199]or le(16238,6199,43263)
                                            continue
                                        end
                                        S=31418
                                    else
                                        if S>51339 then
                                            Ca-=1;
                                            mb[Ca]={[34572]=137,[37361]=ed(Y[37361],180),[49006]=ed(Y[49006],34),[5164]=0};
                                            S=Ld[-29458]or le(32980,-29458,41694)
                                        else
                                            r_[Y[37361]]=#r_[Y[49006]];
                                            S=Ld[-24042]or le(21619,-24042,32357)
                                        end
                                    end
                                elseif not(S<53021)then
                                    if not(S<=53021)then
                                        gb=mb[Ca];
                                        Ra=nil;
                                        S=Ld[-17857]or le(15381,-17857,22710)
                                    else
                                        ka=mb[Ca];
                                        Ca+=1;
                                        Ja=ka[37361]
                                        if Ja==0 then
                                            S=Ld[24665]or le(128261,24665,20236)
                                            continue
                                        elseif Ja==1 then
                                            S=Ld[8178]or le(110340,8178,16097)
                                            continue
                                        elseif Ja==2 then
                                            S=Ld[-32203]or le(1190,-32203,31660)
                                            continue
                                        end
                                        S=Ld[22221]or le(129370,22221,10378)
                                    end
                                else
                                    gb=Y[8477];
                                    Ra=mb[Ca+1];
                                    oa=nil;
                                    S=23048
                                end
                            else
                                if not(S>54733)then
                                    if S<=53961 then
                                        if S<=53638 then
                                            if not(S>53403)then
                                                if not(ie>14)then
                                                    S=Ld[7357]or le(85617,7357,28580)
                                                    continue
                                                else
                                                    S=Ld[9465]or le(30005,9465,47815)
                                                    continue
                                                end
                                                S=Ld[-28616]or le(61990,-28616,53416)
                                            else
                                                Ra,oa,k=gb.__iter(Ra);
                                                S=Ld[-13376]or le(21409,-13376,43569)
                                            end
                                        else
                                            me,Lb=Ra(oa,k);
                                            k=me
                                            if k==nil then
                                                S=22436
                                            else
                                                S=Ld[-28487]or le(21525,-28487,64855)
                                            end
                                        end
                                    else
                                        k..=r_[ba];
                                        S=Ld[19003]or le(19867,19003,24414)
                                    end
                                else
                                    if S<=55615 then
                                        Ca+=1;
                                        S=Ld[-7232]or le(24606,-7232,17040)
                                    else
                                        Ca-=1;
                                        mb[Ca]={[34572]=229,[37361]=ed(Y[37361],143),[49006]=ed(Y[49006],75),[5164]=0};
                                        S=Ld[25355]or le(25176,25355,16466)
                                    end
                                end
                            end
                        end
                    else
                        if not(S>=42157)then
                            if S<39214 then
                                if S>38018 then
                                    if not(S>39106)then
                                        if not(S>=39081)then
                                            Lb[rd]=ue;
                                            S=Ld[28751]or le(130558,28751,5934)
                                        else
                                            if not(S<=39081)then
                                                f_=Lb
                                                if Ba~=Ba then
                                                    S=Ld[-118]or le(84544,-118,24657)
                                                else
                                                    S=44834
                                                end
                                            else
                                                Ca+=Y[34635];
                                                S=Ld[-11780]or le(126764,-11780,14246)
                                            end
                                        end
                                    else
                                        if not(ie>132)then
                                            S=Ld[-7146]or le(16407,-7146,18151)
                                            continue
                                        else
                                            S=Ld[-7406]or le(129729,-7406,59245)
                                            continue
                                        end
                                        S=Ld[27040]or le(24166,27040,25704)
                                    end
                                elseif not(S>37704)then
                                    if S<37567 then
                                        if S<=36019 then
                                            gb=Y[5164];
                                            Ra=Y[49006];
                                            oa=Y[34547];
                                            k=r_[Ra];
                                            r_[gb+1]=k;
                                            r_[gb]=k[oa];
                                            Ca+=1;
                                            S=Ld[17114]or le(4243,17114,15621)
                                        else
                                            if Y[5164]==114 then
                                                S=Ld[-29569]or le(114859,-29569,26040)
                                                continue
                                            elseif Y[5164]==160 then
                                                S=Ld[-10498]or le(33483,-10498,43992)
                                                continue
                                            elseif Y[5164]==186 then
                                                S=Ld[26978]or le(101991,26978,21464)
                                                continue
                                            else
                                                S=Ld[-30403]or le(115774,-30403,42570)
                                                continue
                                            end
                                            S=Ld[4407]or le(334,4407,11584)
                                        end
                                    elseif S>37567 then
                                        if not((rd>=0 and ba>f_)or((rd<0 or rd~=rd)and ba<f_))then
                                            S=Ld[8022]or le(129805,8022,11700)
                                        else
                                            S=Ld[-17612]or le(33943,-17612,62913)
                                        end
                                    else
                                        xe={[1]=r_[ka[49006]],[2]=1};
                                        xe[3]=xe;
                                        Lb[rd]=xe;
                                        S=Ld[10216]or le(42562,10216,54178)
                                    end
                                else
                                    if not(S>37771)then
                                        Ca+=Y[34635];
                                        S=Ld[-32044]or le(4461,-32044,15719)
                                    else
                                        k=Ba;
                                        S=59698
                                        continue
                                    end
                                end
                            elseif S>41269 then
                                if S<41860 then
                                    if not(S>41410)then
                                        me=ba;
                                        S=Ld[-13331]or le(81292,-13331,5597)
                                        continue
                                    else
                                        S=Ld[21815]or le(16385,21815,33445)
                                        continue
                                    end
                                elseif S<=42109 then
                                    if S>41860 then
                                        if not(ie>83)then
                                            S=Ld[23094]or le(21249,23094,37347)
                                            continue
                                        else
                                            S=Ld[-7355]or le(74393,-7355,11428)
                                            continue
                                        end
                                        S=Ld[-20871]or le(36181,-20871,37215)
                                    else
                                        if ie>137 then
                                            S=Ld[29284]or le(17536,29284,41661)
                                            continue
                                        else
                                            S=Ld[14145]or le(10688,14145,57754)
                                            continue
                                        end
                                        S=Ld[-10357]or le(45078,-10357,37528)
                                    end
                                else
                                    Ra[34547]=oa
                                    if not(gb==2)then
                                        if not(gb==3)then
                                        else
                                            S=Ld[-17674]or le(29279,-17674,58112)
                                            continue
                                        end
                                    else
                                        S=Ld[-12485]or le(45558,-12485,62922)
                                        continue
                                    end
                                    S=Ld[-7963]or le(54752,-7963,64402)
                                end
                            elseif S>=40675 then
                                if not(S>=40888)then
                                    Hb(Zc[23844],1,Ra,gb,r_);
                                    S=Ld[-26193]or le(5016,-26193,12818)
                                else
                                    if not(S<=40888)then
                                        Ba=oa-1;
                                        S=Ld[-32180]or le(3377,-32180,44851)
                                    else
                                        if ie>71 then
                                            S=Ld[-11289]or le(6703,-11289,14497)
                                            continue
                                        else
                                            S=Ld[16751]or le(98983,16751,42331)
                                            continue
                                        end
                                        S=Ld[-28113]or le(51184,-28113,61434)
                                    end
                                end
                            elseif not(S>=39507)then
                                Ca+=Y[34635];
                                S=Ld[-1317]or le(47790,-1317,39712)
                            else
                                if not(S<=39507)then
                                    r_[Y[37361]]=oa[Y[53189]][Y[22160]];
                                    S=Ld[-3517]or le(127943,-3517,36814)
                                else
                                    gb=Y[34547];
                                    r_[Y[5164]]=r_[Y[49006]][gb];
                                    Ca+=1;
                                    S=Ld[22357]or le(25299,22357,16581)
                                end
                            end
                        else
                            if S>=47095 then
                                if S<48707 then
                                    if S>=47306 then
                                        if S<48001 then
                                            Ca+=Y[34635];
                                            S=Ld[-21214]or le(36364,-21214,38022)
                                        elseif not(S>48001)then
                                            Lb=Lb+ba;
                                            f_=Lb
                                            if Lb~=Lb then
                                                S=Ld[19341]or le(77904,19341,10785)
                                            else
                                                S=Ld[-13537]or le(14345,-13537,60515)
                                            end
                                        else
                                            gb=Y[37361];
                                            Ra=Y[49006];
                                            oa=Ra-1
                                            if not(oa==-1)then
                                                S=Ld[8744]or le(122944,8744,24151)
                                                continue
                                            else
                                                S=Ld[29510]or le(73272,29510,14099)
                                                continue
                                            end
                                            S=Ld[31802]or le(5139,31802,1670)
                                        end
                                    elseif S<=47095 then
                                        Ca-=1;
                                        mb[Ca]={[34572]=40,[37361]=ed(Y[37361],21),[49006]=ed(Y[49006],82),[5164]=0};
                                        S=Ld[-10719]or le(37915,-10719,48797)
                                    else
                                        Lb=Lb..B(ed(ub(k,rd+1),ub(me,rd%#me+1)));
                                        S=Ld[-8497]or le(10602,-8497,16855)
                                    end
                                elseif S<=50188 then
                                    if S>49775 then
                                        if Y[5164]==128 then
                                            S=Ld[-15370]or le(127758,-15370,35043)
                                            continue
                                        else
                                            S=Ld[-26010]or le(110694,-26010,15881)
                                            continue
                                        end
                                        S=Ld[1030]or le(43024,1030,35482)
                                    elseif S<=49352 then
                                        if S>48707 then
                                            ue={[2]=xe,[3]=r_};
                                            wc[xe]=ue;
                                            S=Ld[27807]or le(97228,27807,13734)
                                        else
                                            Ca-=1;
                                            mb[Ca]={[34572]=165,[37361]=ed(Y[37361],27),[49006]=ed(Y[49006],196),[5164]=0};
                                            S=Ld[-21394]or le(15841,-21394,491)
                                        end
                                    else
                                        Ca+=Y[34635];
                                        S=Ld[-31863]or le(24110,-31863,25760)
                                    end
                                elseif S<=50698 then
                                    Ra,oa,k=_e(Ra);
                                    S=Ld[-11883]or le(122453,-11883,7205)
                                else
                                    if ie>186 then
                                        S=Ld[-19658]or le(41613,-19658,59634)
                                        continue
                                    else
                                        S=Ld[-32224]or le(3592,-32224,28811)
                                        continue
                                    end
                                    S=Ld[20447]or le(10351,20447,2657)
                                end
                            elseif not(S<44345)then
                                if not(S<45538)then
                                    if not(S>=45734)then
                                        gb=Y[34547];
                                        Ra=Y[14677];
                                        oa=r_[Y[37361]]
                                        if not((oa==gb)~=Ra)then
                                            S=Ld[-30563]or le(64792,-30563,49855)
                                            continue
                                        else
                                            S=Ld[22393]or le(3611,22393,52455)
                                            continue
                                        end
                                        S=Ld[3005]or le(4558,3005,15808)
                                    else
                                        if S<=45734 then
                                            if(f_>=0 and Ba>ba)or((f_<0 or f_~=f_)and Ba<ba)then
                                                S=Ld[-1887]or le(126067,-1887,54470)
                                            else
                                                S=Ld[10497]or le(104657,10497,30215)
                                            end
                                        else
                                            k=r_[gb];
                                            Ba,Lb,me=1,Ra,gb+1;
                                            S=58361
                                        end
                                    end
                                else
                                    if not(S>44345)then
                                        if not(Y[5164]==142)then
                                            S=Ld[5076]or le(760,5076,21817)
                                            continue
                                        else
                                            S=Ld[-16161]or le(114643,-16161,38556)
                                            continue
                                        end
                                        S=Ld[-24784]or le(63937,-24784,50635)
                                    else
                                        if(ba>=0 and Lb>Ba)or((ba<0 or ba~=ba)and Lb<Ba)then
                                            S=Ld[4658]or le(77355,4658,3252)
                                        else
                                            S=Ld[-19264]or le(23445,-19264,58475)
                                        end
                                    end
                                end
                            else
                                if not(S>43185)then
                                    if not(S<43140)then
                                        if S<=43140 then
                                            if not(ie>12)then
                                                S=Ld[-1283]or le(1916,-1283,36057)
                                                continue
                                            else
                                                S=Ld[-1365]or le(125820,-1365,64687)
                                                continue
                                            end
                                            S=Ld[-14772]or le(11789,-14772,29831)
                                        else
                                            ua=false;
                                            Ca+=1
                                            if ie>95 then
                                                S=Ld[-27041]or le(104250,-27041,32450)
                                                continue
                                            else
                                                S=Ld[24589]or le(5361,24589,21419)
                                                continue
                                            end
                                            S=Ld[-30733]or le(3288,-30733,5842)
                                        end
                                    else
                                        if not(ie>10)then
                                            S=Ld[2162]or le(26231,2162,39107)
                                            continue
                                        else
                                            S=Ld[9256]or le(113832,9256,38979)
                                            continue
                                        end
                                        S=Ld[-19892]or le(34658,-19892,44948)
                                    end
                                else
                                    if S>43300 then
                                        ba=ba..B(ed(ub(Lb,Ja+1),ub(Ba,Ja%#Ba+1)));
                                        S=Ld[6286]or le(7787,6286,27044)
                                    else
                                        ba=ba+rd;
                                        ka=ba
                                        if not(ba~=ba)then
                                            S=Ld[-21671]or le(114795,-21671,32845)
                                        else
                                            S=Ld[-27427]or le(101818,-27427,380)
                                        end
                                    end
                                end
                            end
                        end
                    end
                else
                    if S>=16102 then
                        if not(S>=24594)then
                            if not(S<=20601)then
                                if S<=22892 then
                                    if S>21820 then
                                        if not(S<=22436)then
                                            r_[Y[37361]]=oa;
                                            S=Ld[5631]or le(123202,5631,63817)
                                        else
                                            Ra,oa,k=P
                                            if not(sb(Ra)~='function')then
                                            else
                                                S=Ld[-1200]or le(4449,-1200,4277)
                                                continue
                                            end
                                            S=Ld[-11252]or le(39945,-11252,38509)
                                        end
                                    elseif S<21091 then
                                        if not(S<=20656)then
                                            Ra,oa,k=wc
                                            if not(sb(Ra)~='function')then
                                            else
                                                S=Ld[-23721]or le(106275,-23721,9175)
                                                continue
                                            end
                                            S=Ld[17258]or le(14120,17258,52521)
                                        else
                                            gb=Y[14677]
                                            if(r_[Y[37361]]==nil)~=gb then
                                                S=Ld[23473]or le(125719,23473,15581)
                                                continue
                                            else
                                                S=Ld[-30006]or le(33280,-30006,37385)
                                                continue
                                            end
                                            S=Ld[17061]or le(20650,17061,32044)
                                        end
                                    elseif not(S<=21091)then
                                        if r_[Y[37361]]then
                                            S=Ld[10616]or le(10577,10616,59042)
                                            continue
                                        end
                                        S=Ld[23708]or le(35245,23708,37927)
                                    else
                                        Ba=Ba..B(ed(ub(me,ka+1),ub(Lb,ka%#Lb+1)));
                                        S=Ld[-3404]or le(101999,-3404,28739)
                                    end
                                elseif not(S>=23848)then
                                    if not(S<=23048)then
                                        r_[Y[37361]]=Da(Y[64681]);
                                        Ca+=1;
                                        S=Ld[31275]or le(52484,31275,53646)
                                    else
                                        k,me=Ra[34547],Y[34547];
                                        me='\151\30\161\4\137'..me;
                                        Lb='';
                                        ba,Ba,f_=#k-1,0,1;
                                        S=26700
                                    end
                                else
                                    if S>23848 then
                                        if Lb[2]>=Y[37361]then
                                            S=Ld[-25012]or le(21514,-25012,22807)
                                            continue
                                        end
                                        S=Ld[25868]or le(10614,25868,44358)
                                    else
                                        me,Lb=Ra(oa,k);
                                        k=me
                                        if k==nil then
                                            S=Ld[-2014]or le(9875,-2014,3845)
                                        else
                                            S=Ld[-26271]or le(8628,-26271,42698)
                                        end
                                    end
                                end
                            else
                                if not(S>18506)then
                                    if S<17480 then
                                        if S<=16217 then
                                            if not(S>16102)then
                                                if not(ie>248)then
                                                    S=Ld[-5266]or le(124533,-5266,55211)
                                                    continue
                                                else
                                                    S=Ld[-26623]or le(126661,-26623,5420)
                                                    continue
                                                end
                                                S=Ld[-23151]or le(55557,-23151,58767)
                                            else
                                                oa,k=gb[34547],Y[34547];
                                                k='\151\30\161\4\137'..k;
                                                me='';
                                                Ba,ba,Lb=#oa-1,1,0;
                                                S=39106
                                            end
                                        else
                                            if ie>142 then
                                                S=Ld[-32056]or le(24557,-32056,37626)
                                                continue
                                            else
                                                S=Ld[22205]or le(18627,22205,37278)
                                                continue
                                            end
                                            S=Ld[-258]or le(9872,-258,3866)
                                        end
                                    elseif S<=18044 then
                                        if not(S<=17480)then
                                            Ra,oa,k=_e(Ra);
                                            S=Ld[-13484]or le(83554,-13484,4627)
                                        else
                                            if not((Ba>=0 and me>Lb)or((Ba<0 or Ba~=Ba)and me<Lb))then
                                                S=Ld[-10767]or le(15058,-10767,52047)
                                            else
                                                S=Ld[26914]or le(115051,26914,15938)
                                            end
                                        end
                                    else
                                        Rd,Ca,wc,P=-1,1,ga({},{__mode='vs'}),ga({},{__mode='ks'});
                                        ua=false;
                                        S=1346
                                    end
                                else
                                    if not(S<=20125)then
                                        if not(S<=20361)then
                                            f_=f_+ka;
                                            Ja=f_
                                            if not(f_~=f_)then
                                                S=14868
                                            else
                                                S=Ld[28468]or le(125966,28468,38144)
                                            end
                                        else
                                            gb=m[Y[49006]+1];
                                            r_[Y[37361]]=gb[3][gb[2]];
                                            S=Ld[-2520]or le(39752,-2520,47938)
                                        end
                                    else
                                        if S<19075 then
                                            r_[Y[37361]]=Y[34547];
                                            S=Ld[3583]or le(20429,3583,22471)
                                        elseif not(S<=19075)then
                                            xe=ka[49006];
                                            ue=wc[xe]
                                            if not(ue==nil)then
                                            else
                                                S=Ld[30237]or le(91651,30237,51)
                                                continue
                                            end
                                            S=38690
                                        else
                                            Ca+=1;
                                            S=Ld[21996]or le(53484,21996,62182)
                                        end
                                    end
                                end
                            end
                        else
                            if S>=31015 then
                                if not(S<32481)then
                                    if S>=35140 then
                                        if S<=35397 then
                                            if S<=35140 then
                                                gb=N(Ra)
                                                if gb~=nil and gb.__iter~=nil then
                                                    S=Ld[23360]or le(32322,23360,41203)
                                                    continue
                                                elseif not(sb(Ra)==pd('\200b\222o\217','\188\3'))then
                                                else
                                                    S=Ld[-16788]or le(4037,-16788,20737)
                                                    continue
                                                end
                                                S=Ld[28462]or le(77309,28462,10110)
                                            else
                                                if not(ie>50)then
                                                    S=Ld[9945]or le(64895,9945,50847)
                                                    continue
                                                else
                                                    S=Ld[-408]or le(119596,-408,42494)
                                                    continue
                                                end
                                                S=Ld[-30330]or le(48075,-30330,39885)
                                            end
                                        else
                                            Ra,oa,k=gb.__iter(Ra);
                                            S=Ld[-15281]or le(40256,-15281,37204)
                                        end
                                    elseif not(S>=33274)then
                                        Ra[53189]=k;
                                        me=nil;
                                        S=Ld[14022]or le(80846,14022,16075)
                                    else
                                        if S<=33274 then
                                            Lb[1]=Lb[3][Lb[2]];
                                            Lb[3]=Lb;
                                            Lb[2]=1;
                                            wc[me]=nil;
                                            S=Ld[-6414]or le(117150,-6414,39839)
                                        else
                                            me=me..B(ed(ub(oa,f_+1),ub(k,f_%#k+1)));
                                            S=Ld[-3039]or le(97869,-3039,4742)
                                        end
                                    end
                                else
                                    if S<31418 then
                                        if S>31015 then
                                            Ra,oa,k=_e(Ra);
                                            S=Ld[-25394]or le(7540,-25394,4440)
                                        else
                                            k=Ra-1;
                                            S=Ld[25888]or le(25741,25888,37120)
                                        end
                                    elseif S>32078 then
                                        Ca-=1;
                                        mb[Ca]={[34572]=10,[37361]=ed(Y[37361],208),[49006]=ed(Y[49006],71),[5164]=0};
                                        S=Ld[-28849]or le(4613,-28849,12431)
                                    elseif S>31418 then
                                        if not(ie>90)then
                                            S=Ld[26]or le(82395,26,26369)
                                            continue
                                        else
                                            S=Ld[28370]or le(14668,28370,59878)
                                            continue
                                        end
                                        S=Ld[-15357]or le(30624,-15357,24106)
                                    else
                                        Hb(Lb,1,Ba,gb,r_);
                                        S=Ld[-20452]or le(38248,-20452,47458)
                                    end
                                end
                            elseif S>26526 then
                                if S>27198 then
                                    if S<=28857 then
                                        Rd=gb+Ba-1;
                                        S=Ld[-4976]or le(17060,-4976,65190)
                                    else
                                        k=nil;
                                        S=14410
                                    end
                                elseif S>=26851 then
                                    if not(S<=26851)then
                                        Ra,oa,k=wc
                                        if not(sb(Ra)~='function')then
                                        else
                                            S=Ld[15972]or le(54988,15972,64406)
                                            continue
                                        end
                                        S=Ld[24104]or le(13373,24104,46749)
                                    else
                                        r_[Y[37361]]=nil;
                                        S=Ld[-32730]or le(63937,-32730,50635)
                                    end
                                else
                                    rd=Ba
                                    if not(ba~=ba)then
                                        S=45734
                                    else
                                        S=Ld[-14298]or le(94813,-14298,30384)
                                    end
                                end
                            elseif not(S<25498)then
                                if not(S>=26288)then
                                    if ie>79 then
                                        S=Ld[4731]or le(113205,4731,44909)
                                        continue
                                    else
                                        S=Ld[-1794]or le(15237,-1794,64645)
                                        continue
                                    end
                                    S=Ld[-31335]or le(64772,-31335,49550)
                                else
                                    if not(S<=26288)then
                                        if not(ie>40)then
                                            S=Ld[27735]or le(114724,27735,41872)
                                            continue
                                        else
                                            S=Ld[6017]or le(93039,6017,12916)
                                            continue
                                        end
                                        S=Ld[-14198]or le(9654,-14198,2104)
                                    else
                                        if not(ie>220)then
                                            S=Ld[-27490]or le(123863,-27490,8606)
                                            continue
                                        else
                                            S=Ld[-24245]or le(123447,-24245,56804)
                                            continue
                                        end
                                        S=Ld[6235]or le(15233,6235,6667)
                                    end
                                end
                            else
                                if S>=25326 then
                                    if S<=25326 then
                                        if ie>156 then
                                            S=Ld[1723]or le(111447,1723,6314)
                                            continue
                                        else
                                            S=Ld[-28582]or le(100171,-28582,20765)
                                            continue
                                        end
                                        S=Ld[-24238]or le(14750,-24238,1040)
                                    else
                                        gb=Y[37361];
                                        Ra=Y[49006]-1
                                        if Ra==-1 then
                                            S=Ld[6362]or le(75865,6362,11351)
                                            continue
                                        end
                                        S=40675
                                    end
                                else
                                    if not(ie>51)then
                                        S=Ld[-26980]or le(39991,-26980,42045)
                                        continue
                                    else
                                        S=Ld[31299]or le(126460,31299,37129)
                                        continue
                                    end
                                    S=Ld[5653]or le(50408,5653,61154)
                                end
                            end
                        end
                    elseif not(S>=8959)then
                        if not(S>3637)then
                            if S<=2050 then
                                if not(S<1346)then
                                    if not(S>1738)then
                                        if not(S>1346)then
                                            if not ua then
                                                S=Ld[16771]or le(77943,16771,12173)
                                                continue
                                            end
                                            S=Ld[29542]or le(10316,29542,55253)
                                        else
                                            Y[34572]=243;
                                            Ca+=1;
                                            S=Ld[-11954]or le(31784,-11954,18082)
                                        end
                                    else
                                        ka=ba
                                        if f_~=f_ then
                                            S=Ld[13041]or le(34397,13041,35615)
                                        else
                                            S=Ld[-14685]or le(106570,-14685,28746)
                                        end
                                    end
                                else
                                    if not(S>=1128)then
                                        if not(ie>35)then
                                            S=Ld[7661]or le(20994,7661,56822)
                                            continue
                                        else
                                            S=Ld[-9238]or le(103159,-9238,16356)
                                            continue
                                        end
                                        S=Ld[30973]or le(27336,30973,18626)
                                    else
                                        if not(S>1128)then
                                            if ie>41 then
                                                S=Ld[-21732]or le(31544,-21732,35764)
                                                continue
                                            else
                                                S=Ld[30146]or le(121940,30146,178)
                                                continue
                                            end
                                            S=Ld[27784]or le(38515,27784,48229)
                                        else
                                            if Y[5164]==75 then
                                                S=Ld[-11993]or le(15038,-11993,53809)
                                                continue
                                            elseif not(Y[5164]==163)then
                                                S=Ld[-5954]or le(47406,-5954,54141)
                                                continue
                                            else
                                                S=Ld[27211]or le(106585,27211,42167)
                                                continue
                                            end
                                            S=Ld[-3507]or le(62695,-3507,57065)
                                        end
                                    end
                                end
                            elseif S<=2546 then
                                if S>=2151 then
                                    if not(S>2151)then
                                        Ca+=1;
                                        S=Ld[-11306]or le(38999,-11306,47705)
                                    else
                                        gb=N(Ra)
                                        if not(gb~=nil and gb.__iter~=nil)then
                                            if sb(Ra)==pd('\157\30\139\19\140','\233\127')then
                                                S=Ld[-15587]or le(93110,-15587,2784)
                                                continue
                                            end
                                        else
                                            S=Ld[18091]or le(104872,18091,26734)
                                            continue
                                        end
                                        S=Ld[-3959]or le(33310,-3959,55422)
                                    end
                                else
                                    Ca+=1;
                                    S=Ld[14181]or le(10443,14181,2765)
                                end
                            elseif not(S>2691)then
                                me=me+Ba;
                                ba=me
                                if me~=me then
                                    S=Ld[27177]or le(21217,27177,19912)
                                else
                                    S=17480
                                end
                            else
                                Ca-=1;
                                mb[Ca]={[34572]=132,[37361]=ed(Y[37361],250),[49006]=ed(Y[49006],12),[5164]=0};
                                S=Ld[993]or le(13585,993,6555)
                            end
                        else
                            if S>=5893 then
                                if not(S>=8100)then
                                    if not(S<=5893)then
                                        k=nil;
                                        S=59397
                                    else
                                        r_[Y[37361]]=r_[Y[5164]][r_[Y[49006]]];
                                        S=Ld[-10283]or le(52069,-10283,60271)
                                    end
                                else
                                    if S>=8616 then
                                        if S<=8616 then
                                            if ie>123 then
                                                S=Ld[19863]or le(87005,19863,2103)
                                                continue
                                            else
                                                S=Ld[-31449]or le(31727,-31449,36727)
                                                continue
                                            end
                                            S=Ld[26706]or le(45400,26706,40274)
                                        else
                                            gb=N(Ra)
                                            if not(gb~=nil and gb.__iter~=nil)then
                                                if sb(Ra)==pd('\22T\0Y\a','b5')then
                                                    S=Ld[16490]or le(12522,16490,43396)
                                                    continue
                                                end
                                            else
                                                S=Ld[-9433]or le(22806,-9433,58146)
                                                continue
                                            end
                                            S=Ld[-17941]or le(50066,-17941,54246)
                                        end
                                    else
                                        gb[34547]=Ra;
                                        Y[34572]=79;
                                        S=Ld[3833]or le(25157,3833,16463)
                                    end
                                end
                            elseif not(S>=4222)then
                                if S>3682 then
                                    if ie>228 then
                                        S=Ld[20903]or le(17252,20903,36450)
                                        continue
                                    else
                                        S=Ld[-29343]or le(4303,-29343,23639)
                                        continue
                                    end
                                    S=Ld[-3985]or le(52383,-3985,53521)
                                else
                                    ba=ba+rd;
                                    ka=ba
                                    if not(ba~=ba)then
                                        S=37704
                                    else
                                        S=Ld[9438]or le(56992,9438,49682)
                                    end
                                end
                            else
                                if S>5412 then
                                    Ca+=1;
                                    S=Ld[-8598]or le(7913,-8598,9443)
                                elseif S>4222 then
                                    me,Lb=Ra(oa,k);
                                    k=me
                                    if not(k==nil)then
                                        S=Ld[21905]or le(55774,21905,53164)
                                    else
                                        S=Ld[-6173]or le(103697,-6173,7381)
                                    end
                                else
                                    Ca+=Y[34635];
                                    S=Ld[-7126]or le(32907,-7126,44301)
                                end
                            end
                        end
                    else
                        if S>=12111 then
                            if not(S>=14410)then
                                if S<13973 then
                                    if not(S<=12111)then
                                        Ba=Ba+f_;
                                        rd=Ba
                                        if not(Ba~=Ba)then
                                            S=13973
                                        else
                                            S=Ld[21961]or le(26841,21961,19155)
                                        end
                                    else
                                        Ba=Ba..B(ed(ub(me,ka+1),ub(Lb,ka%#Lb+1)));
                                        S=Ld[-16596]or le(45080,-16596,34226)
                                    end
                                elseif S>14270 then
                                    r_[Y[37361]]=k;
                                    S=Ld[26470]or le(24064,26470,25738)
                                elseif not(S<=13973)then
                                    Lb[rd]=m[ka[49006]+1];
                                    S=Ld[27358]or le(24697,27358,37289)
                                else
                                    if not((f_>=0 and Ba>ba)or((f_<0 or f_~=f_)and Ba<ba))then
                                        S=Ld[11276]or le(114004,11276,19249)
                                    else
                                        S=Ld[32273]or le(1689,32273,12051)
                                    end
                                end
                            else
                                if S<=14868 then
                                    if not(S>14764)then
                                        if not(S<14733)then
                                            if S<=14733 then
                                                Ba=Ba+f_;
                                                rd=Ba
                                                if Ba~=Ba then
                                                    S=Ld[-20759]or le(69547,-20759,13454)
                                                else
                                                    S=Ld[-16011]or le(2139,-16011,63929)
                                                end
                                            else
                                                if not(ie>6)then
                                                    S=Ld[-10717]or le(9211,-10717,65262)
                                                    continue
                                                else
                                                    S=Ld[29664]or le(107728,29664,22225)
                                                    continue
                                                end
                                                S=Ld[16043]or le(10782,16043,2192)
                                            end
                                        else
                                            me,Lb=Ra[53189],Y[53189];
                                            Lb='\151\30\161\4\137'..Lb;
                                            Ba='';
                                            rd,ba,f_=1,0,#me-1;
                                            S=Ld[-10549]or le(25391,-10549,19553)
                                        end
                                    else
                                        if(ka>=0 and f_>rd)or((ka<0 or ka~=ka)and f_<rd)then
                                            S=Ld[23160]or le(101392,23160,29978)
                                        else
                                            S=Ld[22275]or le(123826,22275,43570)
                                        end
                                    end
                                elseif not(S>15095)then
                                    r_[Y[37361]]=r_[Y[49006]];
                                    S=Ld[6777]or le(47154,6777,39588)
                                else
                                    rd=Ba
                                    if not(ba~=ba)then
                                        S=Ld[26071]or le(126321,26071,214)
                                    else
                                        S=Ld[2318]or le(52317,2318,54871)
                                    end
                                end
                            end
                        elseif not(S>=10571)then
                            if S<9645 then
                                if not(S<=8959)then
                                    r_[Y[5164]]=Y[37361]==1;
                                    Ca+=Y[49006];
                                    S=Ld[-18989]or le(33772,-18989,41958)
                                else
                                    gb,Ra=Y[5164],Y[49006];
                                    oa,k=_b(sd,r_,'',gb,Ra)
                                    if not oa then
                                        S=Ld[-21259]or le(88538,-21259,13603)
                                        continue
                                    end
                                    S=Ld[-10729]or le(130531,-10729,4810)
                                end
                            elseif S<10276 then
                                Lb[1]=Lb[3][Lb[2]];
                                Lb[3]=Lb;
                                Lb[2]=1;
                                wc[me]=nil;
                                S=Ld[-6297]or le(32484,-6297,64756)
                            elseif not(S<=10276)then
                                gb=r_[Y[5164]];
                                r_[Y[49006]]=if gb then gb else Y[34547]or false;
                                S=Ld[-9038]or le(39794,-9038,47972)
                            else
                                Ca-=1;
                                mb[Ca]={[34572]=41,[37361]=ed(Y[37361],148),[49006]=ed(Y[49006],62),[5164]=0};
                                S=Ld[-2383]or le(32626,-2383,18276)
                            end
                        else
                            if not(S>=11541)then
                                if not(S>=10697)then
                                    if ie>151 then
                                        S=Ld[4103]or le(115387,4103,35635)
                                        continue
                                    else
                                        S=Ld[22572]or le(4274,22572,37734)
                                        continue
                                    end
                                    S=Ld[-14814]or le(44483,-14814,61941)
                                else
                                    if not(S<=10697)then
                                        k=Ba;
                                        S=32481
                                        continue
                                    else
                                        Ra,oa,k=gb.__iter(Ra);
                                        S=Ld[-19736]or le(2948,-19736,55733)
                                    end
                                end
                            else
                                if not(S<11587)then
                                    if S<=11587 then
                                        return Cc(r_,gb,gb+k-1)
                                    else
                                        Kc(Lb);
                                        P[me]=nil;
                                        S=Ld[2715]or le(6993,2715,11045)
                                    end
                                else
                                    if ie>243 then
                                        S=Ld[-22490]or le(28386,-22490,36528)
                                        continue
                                    else
                                        S=Ld[23937]or le(116353,23937,62902)
                                        continue
                                    end
                                    S=Ld[16993]or le(31078,16993,17768)
                                end
                            end
                        end
                    end
                end
            until S==25940
        end
        return function(...)
            local te,E,cc,Cd,Be,Ib,jc,ya,Q,Ea,Ne;
            E,jc={},function(xa,xc,jd)
                E[xa]=He(xc,12303)-He(jd,29588)
                return E[xa]
            end;
            cc=E[8670]or jc(8670,23627,19259)
            repeat
                if cc>27751 then
                    if not(cc>31847)then
                        if cc<=31043 then
                            Cd=e_(Cd);
                            cc=E[9647]or jc(9647,36331,61054)
                        else
                            cc=E[7377]or jc(7377,89088,52803)
                            continue
                        end
                    else
                        ya=mc[43180]+1;
                        Q=Be.n-mc[43180];
                        Ne[52928]=Q;
                        Hb(Be,ya,ya+Q-1,1,Ne[23844]);
                        cc=E[-20315]or jc(-20315,51624,57400)
                    end
                elseif not(cc>16011)then
                    if cc>=13205 then
                        if cc<=13205 then
                            Be=Ha(...);
                            Ea=Da(mc[43684]);
                            Ne={[52928]=0,[23844]={}};
                            Hb(Be,1,mc[43180],0,Ea)
                            if mc[43180]<Be.n then
                                cc=E[5827]or jc(5827,68878,53744)
                                continue
                            end
                            cc=26107
                        else
                            Cd=ya[2];
                            te=nil;
                            Ib=Cd;
                            te=e_(Ib)=='string'
                            if not(te==false)then
                            else
                                cc=E[-18021]or jc(-18021,95040,47512)
                                continue
                            end
                            cc=8186
                        end
                    else
                        return Pa(Cd,0)
                    end
                else
                    if not(cc>26107)then
                        ya,Q=Hc(_b(sc,Ea,mc[19799],mc[24446],Ne))
                        if not(ya[1])then
                            cc=E[11482]or jc(11482,50790,50250)
                            continue
                        else
                            cc=E[15599]or jc(15599,43838,23902)
                            continue
                        end
                        cc=E[-23692]or jc(-23692,52221,3103)
                    else
                        return Cc(ya,2,Q)
                    end
                end
            until cc==44600
        end
    end
    return ze(Uc,Gd)
end)
local Me;
Me,na={[0]=0},function()
    Me[0]=Me[0]+1
    return{[2]=Me[0],[3]=Me}
end;
Eb=D
return(function()
    local u_={[2]=1,[1]=Eb};
    u_[3]=u_
    local Tc={[2]=1,[1]=Za};
    Tc[3]=Tc
    local nd={[2]=1,[1]=Md};
    nd[3]=nd
    local Sc={[2]=1,[1]=dc};
    Sc[3]=Sc
    return Eb(pa'+fH1ZmR1K/7CxxPUwsYS1NgUVKZlFVSmE0yQ+HwVVKbrF1SmE0yR+cLGE9TCxRLUwsQR1NgTVKZlE1Wm2BJUpmUSVqbCwRDUb31x5xNOk/4TTpL/E06S+hNMkvt8FFSm6xdUphNMkfhveHDnwu5YBhNOkvtvgWqhfGR1K/7yUWx1K/5o5lD116OS1y0alBX6l6LnYAjTBWF4wKfymqq6g1p8ZOO8lQkVC0d41tOxpktNX3NhSrCBOkGbJrWqtNLg1caNeGsqkbnk2KiwxeEyPZ4blyoXxH9zi7OBHKJUg5+/El2IqzoOa1FwhZL/ce6GuR3yOkYX4juwDmDlRWKgB2cHU+7KKGDHv2rF1uzJa/NhGZKmOzPc35a2wvv/OBLJys30LNwRN8oIU1JNO2vIWmNJIZrOKePysoAi+zPlRU3wy8o2xqOzL39MajihO/DUdy1LO3ZFrK6U71BkZ+2JjdOCTOpdOsRDkf+p+cTIF9TqePTtgDxEMtKNJ4tKZOtoRCseg9a/3yLmcjxA7ovBd7cuYgWvQGJKUBOUeLArCyAYhLd+ARPrTt31yq1a15EsqMDCkzl4usfYKkISnUisxG/KzmTruDgmcValth4CLbYV7sFBcFN2Vn7RCp22vJvXqqTv5yj3KlcdsHoq6Qfy2y7xNTEpu34y/BXahUAK636tcznxwyjcQSm0Jl5XSc1xpsZY9PEnzk+PIk3BQYzR1kEaSJ4TLhl6Q8B5ZrtW1Ma6C3Oykc145zfK6YwmukmBoYGO/+tJQoAZDpaJstHbRmdpt9m2pX0gKK2Yia/F+2tcH1YLXIDc1PuHIu6qBNYD78hr8IOwUhVlRueqXBc+fPQlYrpi27SIAq5qnryaK0+2MVcjYfxvnrSjiu85dsawf0nTsa2TWhqrbJKw7DJMPqxn+Irl8JQzbIQbd97yGqsX8r64m9epTiTAiC2mZ9VlZ/7s4xPmoAw8GbG/OI1tWf5Oo+6bSYOdloypHON+xRmfs7F9+MZb04LGzJ/SaHqLefmDfS6QJ36IC4t8+AR4hls8xmQG7KftO9oi7CU8NbxfdJsJW7qqi6qhqsg+cSDOXqFItpWiW0tYlYWaYa0Jm/a91oyPTBAZyj5Edc7ElStSM/IkVJURxlvVm4u/8bVktWtW+zwB7UiB2qSmVF3+dgH/2YWOGloDHiD52r0DrnD+boE0sA+Bd/DCu+cPRN3GhEO7DDQc9g/YGnFESCOhhd182w59OnzttRuf7PegzfT2ffyjPWiTgJX5tvc2XIz+gmDwgPt6xxKvnF2e8gZ9veiNc2oUjeeGAWh+AT7q+aaFNO/7XH2MpCMrRcIomTwXJDM8Wlr3WJ8ntKLTQdbDlvOWfQljj2LtTjzCj9R5bb5LKMFBE7MaEZ+0xQ/9ubODVq+4gICRcq/vqfczfkqVTag9b5Lc0DUnIW6/lkI5cJBy1hGxx/DacK2Scw0zk/iWQHJzWraj/IuxLdAP7Bl0IOl+R0xxlfTNmoaC9/HgxFAMqs1AFkKtsDYWznQsfnE4TTFEOMz4bejFrYMISa5/3XKiTareX5kF009RYM7evPhddt4uWodrxUCrR6MJ1vJKbHUr/gqHQHGZKzahAQL9lp69aX9jSFMpSvbMFTKVErWW4IxMpf0pl28PPkrbRxC6/tlzbxcU+HFFYcPI2Lm0DHi8mPN5bd0BRHMQMNkhGGwL24cNV/84YmaFBlz3S1wrJc2Klk/1E1Mw3vD/bGHe7mNrTBH+FZIk8lAnOkLf735qf/6SyqG9aRdJfKFK/2cC7dpCIs70hMgzYplGmyxa7PM/QeWLgswoqBQ1FGe6r2MZ8bqWRL1R2hpVmJxb94B3xZI60lAadmnhpnhfWvAchf3iN64p+RMproQr9EdpKEKTyGtVcAxGseZqGQAGrZznwonOhSntelHRbhLoAnc0kZvfW6ylGCb0fouu5a0EjgtahKqdvY7xeIzqKEgEA+/i2fGyTv45Y57zgC/XqQ37lRmL5IWu2DkjrL1QNsQb3HVxZobdZY5jsSi42rzDQtIdmQb1QjaYEP+nUey90X2DbHOzRpZDVdak7T87rMYqJjMO9D20/DGTwqOvd/LjmWVPhwamXPR68HejfB358vZZQxBmRLdKY+QWLDgkY7TWglew/eSGdQDhtAEtFQRA6rJobhUUaZdOF+KSDX96F826DDRIVpcc+79ydTh4MwMA7TXHHXa0Xzk7D0+AC/G+9vb/SPTjUHfP329mUwHe6DhXyjCka0GFX/6+hkZFzp4a60Jf3gXKNE9P93tFB0qeQ5T69aAvrZrsdZB1iNWIyz7iM897URPoaliOalAcnliYqE7ZwgOfooIoPgEcqnJTun4Z8ZPJOcP0IuaoVxVKWElUoHahoTcOCHketRS4x68E9NKv42R5jhPoGyiMdUoodcEgZsMakUleAhTzQ4P3OjCe5A288OC+T7YJjA2VG2DZw6Luf1wdIpDbPBmNkbBLC63fKhZpzwF/aDNghW7krtpL3C/Z4+egArCsJK/wkQ2b5+OqPCQMlmPGGmiqT88j57+ZrRMIALceVg85+FfKRKO0yATGDqQdgAt8i6qjZnz3GdZJEvzUNycvKdamz4yaNvEr69ObFdcQtH8s//vYpTBn3L5y6LORbkEIOUEKNOonxFn51fxtdYuWm0uV8s16jjUo+QUuW4ayOBnzE2HU95otjW1LiuDW4ydE08mUrj3BqdjKjVeyMEzky+6cvfjVtBqiyCw8Vby75fx/h9af1DZm7miYdj//Jdt/Dm0V9JP3cPLevfNhdiIq5UOYW7CEMyKrIXt1hO4Zj5QgqiewUHHYtta/wNdn2spW9ZhiYDbINWYhtbRQ26zmw6RNys8EWRVDOn65x5VW8RciIg6lUhLygOW9tts3NIErAqIBdnAYpRoxFjyx7AjdBKfkIFKuz0iCrkzzWV82jL+cnJxtQBlpGnzKrakYR9ofgGcFw7r9EMdttdsNtl+6sCQeSxwZQUpTKqy148CbPdZdLaD/TC6M/LCNynTydmR1K/6WTi/jCCAv5J2Sw6Pyb2B1K/7G5/zT5UwMrjHH8DSuLnJhGCuwVnxNrDwM2o/0+HMI9l/onzHG4aerKV6XJaVXZi4TmMaxTAwt9sRg4n5tWf5O497bt6aV1dqP5sstd+CZlrBTX+MWQ9Y5CwQJLlQpQ/uuH/vlGI6B+c/6KykZsRnjtAOA+hjEeAQYU/W3i3nAJrAKOsWgWJQqcEk0XeMxzb+H6WQ4Z4cN76VInI3W/tZiAqxYsjGbKk+XGjRsdtDy6tKVzqokteMiL7W70R6imU9tFBWeliyhds84b8LzpohOwsuvQJjb6aI6ZvTgqSM9bG4akhzRPFNA0IDQFYAYpWv2bxnpyQuDySZPTAMk1d+DGclu7m+iJuKD0RUOjZHjKcRJb4rOKGrQZ0jWi/8SqJytIaNYqKgvKokzuVBIlrujP1U/0vWtWTYEw++bNtbOUK+wOIPhZmhwKxkgC5PuCl79IH1S1rAYWFV/Xy+I+i9SZc+sdUCBZ0Qj/nbO3UAljKneAeW/wV1KsywccN/WzkL8fTXmkTVAjmfKgsFDe4JCePq/s1QNTKTA8fcWxJCUiDvXOHzW+tQlrVFyUa1FegTMD2mJhRiT96+wOXiP8kcjbb2e6vmutXxJvDbKL69e334aDjOPZ8hgohS1nuKwGVD5Sple1if08hyrT9FBT5QGsZ71/vr6xX2hUKLuxGOj1f0IqFiuTspwRs5/lHauyXSj9+fJOPJiYHUr/rnwNwMrVPb7yVvmzxdZWi3HTnaWLnJntpFBFLFQIPT0B21jHUJ4/8XDHccpkT3gcodTtLDNWoaCnyN4YsqRtr0gkdyKuFHbl2a0PQvEb6D24rKyXXxhKfD6133x00co0qFIvvw1lN10XLO+2Y7MifjPYe73qdgPwn7+g+wtBhf2A6/X1DmbMYLm/sQqwLSmDUP965yhbNPr6pihB7N85RLUDkeDYIWLjtlUaF1zxvBeeO7weBnya1FPokMmg/Rwz8HqrcMv4syHE7N/8bqP9BD0hNWhAmYxi6l9tJnDIfr/Memyd82JMqozD3UFrqnFRFk32qHazF9gjd/BIBRBWskTMdpZZdJzFgE10UgfmxA6gE653Y+NaleOu4tsOEjJybH+en/439JhlcGQ3ELiEcm1fSHFZSEeCAvT+38bxXlt08g7ixwadhQQjn8TGHAaP8FWkeKbUWPcxfrw4z9w6KXj5wjfYGGfbrrYRG/ED1Ev6d0BzSH6EP9rGFaGYgUcEybKpRhyMgygHWHjwhhSSsd5zw5bv/hwm3AN/b883uy8oOwpkGGgwStYWiI2S5cE/UGL90EoH92aZwwzCUD94zNFS/rBICqBMzwZuGTpKfU7TjAIZzLqGvtBavhh/67dWr0hkVPdbfrwnXvV3a9T1h+HN6TngqoDEUPwc4pPiS24eYKFZaVfDaYK4KfK+yy0F3KmsCyOTLK68nxkdSv+Sf8fb+uqemR1K/4=',{[1]=u_,[4]=Sc,[3]=nd,[2]=Tc})
end)()(...)
