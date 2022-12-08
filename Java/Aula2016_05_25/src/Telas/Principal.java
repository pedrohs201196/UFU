/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Telas;

import Controle.AddContatoControle;
import aula2016_05_25.GestaoContatos;
import java.util.Scanner;
import aula2016_05_25.Contato;
import javax.swing.JOptionPane;

/**
 *
 * @author a11511BSI257
 */
public class Principal extends javax.swing.JFrame {
    

    GestaoContatos g = GestaoContatos.getInstance();
    
    public Principal() {
        initComponents();
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jSeparator2 = new javax.swing.JSeparator();
        LabelTitulo = new javax.swing.JLabel();
        AdicionarContatoButton = new javax.swing.JButton();
        EliminaContatoButton = new javax.swing.JButton();
        ListarContatosButton = new javax.swing.JButton();
        SalvarContatosButton = new javax.swing.JButton();
        jSeparator1 = new javax.swing.JSeparator();
        jSeparator3 = new javax.swing.JSeparator();
        FecharProgramaButton = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setName("Lista de Contatos"); // NOI18N

        LabelTitulo.setText("LISTA DE CONTATOS!");

        AdicionarContatoButton.setText("Adicionar Contato");
        AdicionarContatoButton.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                AdicionarContatoButtonMouseClicked(evt);
            }
        });
        AdicionarContatoButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                AdicionarContatoButtonActionPerformed(evt);
            }
        });

        EliminaContatoButton.setText("Eliminar Contato");
        EliminaContatoButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                EliminaContatoButtonActionPerformed(evt);
            }
        });

        ListarContatosButton.setText("Listar Contatos");
        ListarContatosButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ListarContatosButtonActionPerformed(evt);
            }
        });

        SalvarContatosButton.setText("Salvar Contatos");
        SalvarContatosButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                SalvarContatosButtonActionPerformed(evt);
            }
        });

        FecharProgramaButton.setText("Fechar Programa");
        FecharProgramaButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                FecharProgramaButtonActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jSeparator1, javax.swing.GroupLayout.DEFAULT_SIZE, 240, Short.MAX_VALUE)
            .addComponent(jSeparator3)
            .addGroup(layout.createSequentialGroup()
                .addGap(39, 39, 39)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(FecharProgramaButton, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                        .addComponent(LabelTitulo, javax.swing.GroupLayout.PREFERRED_SIZE, 119, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(AdicionarContatoButton, javax.swing.GroupLayout.DEFAULT_SIZE, 145, Short.MAX_VALUE)
                            .addComponent(EliminaContatoButton, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(ListarContatosButton, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(SalvarContatosButton, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jSeparator3, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(4, 4, 4)
                .addComponent(LabelTitulo, javax.swing.GroupLayout.PREFERRED_SIZE, 34, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(AdicionarContatoButton)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(EliminaContatoButton, javax.swing.GroupLayout.PREFERRED_SIZE, 23, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(ListarContatosButton)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(SalvarContatosButton)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(FecharProgramaButton)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 33, Short.MAX_VALUE)
                .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, 16, javax.swing.GroupLayout.PREFERRED_SIZE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void SalvarContatosButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_SalvarContatosButtonActionPerformed
        
        if (g.salvaContatos()){
            JOptionPane.showMessageDialog(this,"Contatos salvos com sucesso");
        }
        else{
            JOptionPane.showMessageDialog(this,"Falha ao salvar contatos");
        }
    }//GEN-LAST:event_SalvarContatosButtonActionPerformed

    private void AdicionarContatoButtonMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_AdicionarContatoButtonMouseClicked

       
    }//GEN-LAST:event_AdicionarContatoButtonMouseClicked

    private void AdicionarContatoButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_AdicionarContatoButtonActionPerformed
        
        //nao poder clicar na tela
        this.setEnabled(false);
        //abrir tela de contatos
        new AddContatoGUI(this).setVisible(true);
    }//GEN-LAST:event_AdicionarContatoButtonActionPerformed

    private void FecharProgramaButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_FecharProgramaButtonActionPerformed
        System.exit(0);
    }//GEN-LAST:event_FecharProgramaButtonActionPerformed

    private void EliminaContatoButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_EliminaContatoButtonActionPerformed
        //nao poder clicar na tela
        this.setEnabled(false);
        //abrir tela de remover contatos
        new EliminaContatoGUI(this).setVisible(true);
    }//GEN-LAST:event_EliminaContatoButtonActionPerformed

    private void ListarContatosButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ListarContatosButtonActionPerformed
        this.setEnabled(false);
        //abrir tela de ver contatos
        new ListarContatosGUI(this).setVisible(true);
    }//GEN-LAST:event_ListarContatosButtonActionPerformed


    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Principal().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton AdicionarContatoButton;
    private javax.swing.JButton EliminaContatoButton;
    private javax.swing.JButton FecharProgramaButton;
    private javax.swing.JLabel LabelTitulo;
    private javax.swing.JButton ListarContatosButton;
    private javax.swing.JButton SalvarContatosButton;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JSeparator jSeparator2;
    private javax.swing.JSeparator jSeparator3;
    // End of variables declaration//GEN-END:variables
}
