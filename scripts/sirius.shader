// shaders for sirius
// 

// -------------------- Sky box
// environment map "Top of the Heap" by Mighty Pete
textures/sirius/top-of-the-heap
{
      qer_editorimage env/sirius/top-of-the-heap/top-of-the-heap-small.jpg
      surfaceparm noimpact
      surfaceparm nolightmap
      surfaceparm sky
      //q3map_sun   .5 .37 .22 300 265 15
      q3map_surfacelight 15

     skyparms env/sirius/top-of-the-heap/top-of-the-heap512 - -
}


// -------------------- Glass -----------------------

// by Ingar
textures/sirius/ing-glass2
{
        qer_editorimage textures/sirius/ing-glass2.tga
        qer_trans .5
        surfaceparm nolightmap
        surfaceparm trans
	surfaceparm nomarks
	surfaceparm playerclip
        {
                map textures/sirius/ing-glass2.tga
                tcGen environment
                blendfunc gl_dst_color gl_src_alpha
        }
//        {
//                map textures/sirius/ing-glass2.tga
//                //blendfunc gl_dst_color gl_src_alpha
//                blendfunc filter
//        }
        {
                map $lightmap
                rgbgen identity
                blendfunc gl_dst_color gl_zero
        }
}

// by Ingar
textures/sirius/glass_outside
{
        qer_editorimage textures/sirius/glass.tga
        qer_trans .5
        surfaceparm nolightmap
        surfaceparm trans
	surfaceparm nomarks
	surfaceparm playerclip
//	cull none
        {
                map textures/sirius/glass.tga
                tcGen environment
                blendfunc gl_dst_color gl_src_alpha
        }
        {
                map textures/sirius/glass.tga
                //blendfunc gl_dst_color gl_src_alpha
                blendfunc filter
        }
        {
                map $lightmap
                rgbgen identity
                blendfunc gl_dst_color gl_zero
        }
}

// by Ingar
textures/sirius/glass_inside
{
        qer_editorimage textures/sirius/glass.tga
        qer_trans .5
        surfaceparm nolightmap
        surfaceparm trans
	surfaceparm nomarks
	surfaceparm playerclip
//	cull none
        {
                map textures/sirius/glass.tga
                //blendfunc gl_dst_color gl_src_alpha
                blendfunc filter
        }
        {
                map $lightmap
                rgbgen identity
                blendfunc gl_dst_color gl_zero
        }
}

// -------------------- Grates & Floors -------------------------------

// by evillair
textures/sirius/e6bsegrtflr256
{
        qer_editorimage textures/sirius/e6bsegrtflr256.tga
        surfaceparm trans
        surfaceparm nomarks
        surfaceparm metalsteps
        cull none

        {
                map textures/sirius/e6bsegrtflr256.tga
                alphafunc GE128
                depthwrite
        }
        {
                map $lightmap
                depthfunc equal
                blendfunc filter
        }
}

textures/sirius/e8clangfloor05:q3map
{
	surfaceparm metalsteps
}

// -------------------- Metal ---------------------------------------

textures/sirius/tin_s
{
	qer_editorimage textures/sirius/tin.tga
	{
		map $lightmap 
		rgbGen identity
		tcGen lightmap 
	}
	{
		map textures/sirius/tin.tga
		blendfunc gl_dst_color gl_src_alpha
		rgbGen identity
		alphaGen lightingSpecular
	}
}

// -------------------- Fans ----------------------------------------

// by Evillair
textures/sirius/e6metalfan_s2
{
	qer_editorimage textures/sirius/e6metalfan.tga

	{
		map textures/sirius/e6metalfan_blade.tga
		tcmod rotate 5000
	}
	{
		map textures/sirius/e6metalfan.tga
		blendfunc blend
	}
	{
		map $lightmap
		blendfunc filter
	}
}

textures/sirius/panel
{
	qer_editorimage textures/sirius/panel.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/sirius/panel.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/sirius/panel.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

// -------------------- Patches special -----------------------------

// shader by Ingar
textures/sirius/e8basictrim2_red_cullnone
{
        qer_editorimage textures/sirius/e8basictrim2_red.tga
	cull none
        {
                map textures/sirius/e8basictrim2_red.tga
        }
        {
                map $lightmap
                blendfunc filter
        }
}

// -------------------- Ladder --------------------------------------

// by Jex or Timbo
textures/sirius/ladder {
	qer_trans .75
	qer_editorimage textures/sirius/ladder.tga
	surfaceparm ladder
	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm noimpact
	surfaceparm playerclip
}

// -------------------- Ion Cannon ----------------------------------
// by Ingar

textures/sirius/ing-laser1
{
	qer_editorimage textures/sirius/ing-laser1.tga
        //entityMergable
        cull none
        {
                map textures/sirius/ing-laser1.tga
		//blendFunc blend
		depthwrite
                blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
                //rgbGen          vertex
                alphaGen        vertex
        }
}

// -------------------- Lights  -------------------------------------

// evillairs red striplight
textures/sirius/e6redlight
{
        qer_editorimage textures/sirius/e6basicstrip_red.tga
        q3map_surfacelight 100
        surfaceparm nomarks
        surfaceparm nolightmap
        {
                map textures/sirius/e6basicstrip_red.tga

        }
}

// evillairs red striplight
textures/sirius/e6redlight_bright
{
        qer_editorimage textures/sirius/e6basicstrip_red.tga
        q3map_surfacelight 2500
        surfaceparm nomarks
        surfaceparm nolightmap
        {
                map textures/sirius/e6basicstrip_red.tga

        }
}

// evillairs red striplight
textures/sirius/e6redlight_blink
{
        qer_editorimage textures/sirius/e6basicstrip_red.tga
//        q3map_surfacelight 5000
        surfaceparm nomarks
        surfaceparm nolightmap
        {
                map textures/sirius/e6basicstrip_red.tga
		rgbGen wave square .5 .5 0 1

        }
}

// evillairs white striplight
textures/sirius/e6whitelight
{
        qer_editorimage textures/sirius/e6basicstrip_white.tga
        q3map_surfacelight 100
        surfaceparm nomarks
        surfaceparm nolightmap
        {
                map textures/sirius/e6basicstrip_white.tga

        }
}

// evillairs white striplight, bright light
textures/sirius/e6whitelight_bright
{
        qer_editorimage textures/sirius/e6basicstrip_white.tga
        q3map_surfacelight 2500
        surfaceparm nomarks
        surfaceparm nolightmap
        {
                map textures/sirius/e6basicstrip_white.tga

        }
}

// yellow light
textures/sirius/e8tinylight
{
	qer_editorimage textures/sirius/e8tinylight.jpg
	q3map_lightimage textures/sirius/e8tinylight.blend.jpg
	surfaceparm nomarks
	q3map_surfacelight 950
	{
		map textures/sirius/e8tinylight.jpg
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/sirius/e8tinylight.blend.jpg
		blendfunc add
	}
}

// tiny yellow light 5k
textures/sirius/e8tinylight_5k
{
	qer_editorimage textures/sirius/e8tinylight.jpg
	q3map_lightimage textures/sirius/e8tinylight.blend.jpg
	surfaceparm nomarks
	q3map_surfacelight 5000
	{
		map textures/sirius/e8tinylight.jpg
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/sirius/e8tinylight.blend.jpg
		blendfunc add
	}
}

// tiny yellow light 10k
textures/sirius/e8tinylight_10k
{
	qer_editorimage textures/sirius/e8tinylight.jpg
	q3map_lightimage textures/sirius/e8tinylight.blend.jpg
	surfaceparm nomarks
	q3map_surfacelight 10000
	{
		map textures/sirius/e8tinylight.jpg
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/sirius/e8tinylight.blend.jpg
		blendfunc add
	}
}

// tiny blue light 10k
textures/sirius/e8tinylightblue_s_10k
{
	qer_editorimage textures/sirius/e8tinylightblue.tga
	surfaceparm nomarks
	q3map_surfacelight 10000
	{
		map textures/sirius/e8tinylightblue.tga
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/sirius/e8tinylightblue.blend.tga
		blendfunc add
	}
}

textures/sirius/proto_lightred_64_300
{
	qer_editorimage textures/sirius/proto_lightred_64.tga
	surfaceparm nomarks
	q3map_surfacelight 300
//	light 1
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/sirius/proto_lightred_64.tga
		blendFunc filter
		rgbGen identity
	}
        {
		map textures/sirius/proto_lightred_64.tga
		blendFunc add
	}
	
}

textures/sirius/proto_lightred_64_7k
{
	qer_editorimage textures/sirius/proto_lightred_64.tga
	surfaceparm nomarks
	q3map_surfacelight 7000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/sirius/proto_lightred_64.tga
		blendFunc filter
		rgbGen identity
	}
        {
		map textures/sirius/proto_lightred_64.tga
		blendFunc add
	}
	
}
textures/sirius/sq_light_orange_s_25k
{
	qer_editorimage textures/sirius/sq_light_orange.tga
	surfaceparm nomarks
	q3map_surfacelight 25000
	{
		map textures/sirius/sq_light_orange.tga
	}
	{
		map $lightmap 
		blendfunc filter
	}
	{
		map textures/sirius/sq_light_orange.tga
		blendfunc add
	}
}

textures/sirius/sq_light_orange_s_10k
{
	qer_editorimage textures/sirius/sq_light_orange.tga
	surfaceparm nomarks
	q3map_surfacelight 10000
	{
		map textures/sirius/sq_light_orange.tga
	}
	{
		map $lightmap 
		blendfunc filter
	}
	{
		map textures/sirius/sq_light_orange.tga
		blendfunc add
	}
}

// by Evillair, edited by Godmil
textures/sirius/e8tmtllight2
{
	qer_editorimage textures/sirius/e8tmtllight2.tga
	q3map_lightimage textures/sirius/e8tmtllight2.blend.tga
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 950
	{
		map textures/sirius/e8tmtllight2.tga
	}
	{
		map $lightmap
		blendfunc filter
		tcGen lightmap
	}
	{
		map textures/sirius/e8tmtllight2.blend.tga
		blendfunc add
	}
}
